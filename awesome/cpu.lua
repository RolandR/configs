local awful = require("awful")
local beautiful = require("beautiful")
local naughty = require("naughty")
local wibox = require("wibox")
local watch = require("awful.widget.watch")


local cpugraph_widget = wibox.widget {
    max_value = 20,
    color = beautiful.fg_normal,
    background_color = beautiful.bg_normal,
    forced_width = 60,
    step_width = 1,
    step_spacing = 0,
    widget = wibox.widget.graph
}

local cputext = wibox.widget {
    color = beautiful.fg_focus,
    align  = 'right',
    forced_width = 24,
    widget = wibox.widget.textbox
}

local icon = wibox.widget {
	image  = beautiful.cpu_icon,
	widget = wibox.widget.imagebox
}

cpu_widget = wibox.widget {
	icon,
	cputext,
	{
		{
			{
				widget = cpugraph_widget
			},
			reflection = {horizontal = true},
			widget = wibox.container.mirror
		},
		left = 5,
        layout = wibox.container.margin
	},
	--wibox.container.mirror(cpugraph_widget, {horizontal = true}),
    layout  = wibox.layout.align.horizontal
}

local total_prev = 0
local idle_prev = 0

watch("cat /proc/stat | grep '^cpu '", 1,
    function(widget, stdout, stderr, exitreason, exitcode)
        local user, nice, system, idle, iowait, irq, softirq, steal, guest, guest_nice =
        stdout:match('(%d+)%s(%d+)%s(%d+)%s(%d+)%s(%d+)%s(%d+)%s(%d+)%s(%d+)%s(%d+)%s(%d+)%s')

        local total = user + nice + system + idle + iowait + irq + softirq + steal

        local diff_idle = idle - idle_prev
        local diff_total = total - total_prev
        local diff_usage = (1000 * (diff_total - diff_idle) / diff_total + 5) / 10

        if diff_usage > 80 then
            widget:set_color(beautiful.fg_focus)
        else
            widget:set_color(beautiful.fg_normal)
        end

        widget:add_value(math.floor((diff_usage/100)*20))
        
        cputext.text = math.floor(diff_usage) .. "%"

        total_prev = total
        idle_prev = idle
    end,
    cpugraph_widget
)