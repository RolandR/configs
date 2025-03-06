local awful = require("awful")
local beautiful = require("beautiful")
local naughty = require("naughty")
local wibox = require("wibox")
local watch = require("awful.widget.watch")


local memgraph_widget = wibox.widget {
    max_value = 20,
    color = beautiful.fg_normal,
    background_color = beautiful.bg_normal,
    forced_width = 60,
    step_width = 1,
    step_spacing = 0,
    widget = wibox.widget.graph
}

local memtext = wibox.widget {
    color = beautiful.fg_focus,
    align  = 'right',
    forced_width = 24,
    widget = wibox.widget.textbox
}

local icon = wibox.widget {
	image  = beautiful.mem_icon,
	widget = wibox.widget.imagebox
}

mem_widget = wibox.widget {
	icon,
	memtext,
	{
		{
			{
				widget = memgraph_widget
			},
			reflection = {horizontal = true},
			widget = wibox.container.mirror
		},
		left = 5,
        layout = wibox.container.margin
	},
	--wibox.container.mirror(memgraph_widget, {horizontal = true}),
    layout  = wibox.layout.align.horizontal
}

local total, used, free, shared, buff_cache, available, total_swap, used_swap, free_swap

watch('bash -c "free | grep -z Mem.*Swap.*"', 1,
    function(widget, stdout, stderr, exitreason, exitcode)
        total, used, free, shared, buff_cache, available, total_swap, used_swap, free_swap =
            stdout:match('(%d+)%s*(%d+)%s*(%d+)%s*(%d+)%s*(%d+)%s*(%d+)%s*Swap:%s*(%d+)%s*(%d+)%s*(%d+)')

        widget:add_value(math.floor((used/total)*20))
        
        memtext.text = math.floor(100*used/total) .. "%"
        
    end,
    memgraph_widget
)