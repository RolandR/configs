local awful = require("awful")
local beautiful = require("beautiful")
local naughty = require("naughty")
local wibox = require("wibox")
local watch = require("awful.widget.watch")


local gpugraph_widget = wibox.widget {
    max_value = 20,
    color = beautiful.fg_normal,
    background_color = beautiful.bg_normal,
    forced_width = 60,
    step_width = 1,
    step_spacing = 0,
    widget = wibox.widget.graph
}

local gputext = wibox.widget {
    color = beautiful.fg_focus,
    align  = 'right',
    forced_width = 27,
    widget = wibox.widget.textbox	
}

local gpuwatt = wibox.widget {
    color = beautiful.fg_focus,
    align  = 'right',
    forced_width = 36,
    widget = wibox.widget.textbox	
}

local gputemp = wibox.widget {
    color = beautiful.fg_focus,
    align  = 'right',
    forced_width = 27,
    widget = wibox.widget.textbox	
}

local icon = wibox.widget {
	image  = beautiful.gpu_icon,
	widget = wibox.widget.imagebox
}

function split(pString, pPattern)
   local Table = {}  -- NOTE: use {n = 0} in Lua-5.0
   local fpat = "(.-)" .. pPattern
   local last_end = 1
   local s, e, cap = pString:find(fpat, 1)
   while s do
      if s ~= 1 or cap ~= "" then
     table.insert(Table,cap)
      end
      last_end = e+1
      s, e, cap = pString:find(fpat, last_end)
   end
   if last_end <= #pString then
      cap = pString:sub(last_end)
      table.insert(Table, cap)
   end
   return Table
end

gpu_widget = wibox.widget {
	{
		icon,
		gpuwatt,
		gputemp,
		layout = wibox.layout.align.horizontal
	},
	gputext,
	{
		{
			{
				widget = gpugraph_widget
			},
			reflection = {horizontal = true},
			widget = wibox.container.mirror
		},
		left = 5,
        layout = wibox.container.margin
	},
	--wibox.container.mirror(gpugraph_widget, {horizontal = true}),
    layout  = wibox.layout.align.horizontal
}

watch("nvidia-smi dmon -i 0 -s pu -c 1", 1,
    function(widget, stdout, stderr, exitreason, exitcode)
        
		local values = split(stdout, "(\n)")[3]
		
		local usage = split(values, "(%s+)")[5]
		local power = split(values, "(%s+)")[2]
		local temp = split(values, "(%s+)")[3]

        --if usage > 80 then
        --   widget:set_color(beautiful.fg_focus)
        --else
        --    widget:set_color(beautiful.fg_normal)
        --end

        widget:add_value(math.floor((usage/100)*20))
        
        gputext.text = usage .. "%"
        gpuwatt.text = power .. "W"
        gputemp.text = temp .. "°"
    end,
    gpugraph_widget
)