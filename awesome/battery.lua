local awful = require("awful")
local beautiful = require("beautiful")
local naughty = require("naughty")
local wibox = require("wibox")
local watch = require("awful.widget.watch")

local HOME = os.getenv("HOME")



local battery_text = wibox.widget{
    text = 'foo',
    align  = 'center',
    valign = 'center',
    widget = wibox.widget.textbox
}

local icon = wibox.widget {
	image  = beautiful.battery_icon,
	widget = wibox.widget.imagebox
}

battery_widget = wibox.widget {
	icon,
    battery_text,
    layout  = wibox.layout.align.horizontal
}

watch("acpi -b", 2,
    function(widget, stdout, stderr, exitreason, exitcode)
        --local batteryType
        local status, charge_str = string.match(stdout, '^.-: (%a+), (%d+)%%')
        local charge_time = string.match(stdout, '(%d%d:%d%d)')
        local charge = tonumber(charge_str)
        
        --[[
		Some observed acpi outputs:
			Battery 0: Discharging, 65%, 02:07:25 remaining
			Battery 0: Charging, 64%, 00:44:27 until charged
			Battery 0: Unknown, 65%
			Battery 0: Charging, 64%, charging at zero rate - will never fully charge.
			Battery 1: Full, 0%, rate information unavailable
		]]


        local text = charge .. '%'
        local approxCharge = math.ceil(charge/10)*10

        if status == 'Charging' then
            text = text .. ' +'
            icon.image = beautiful.battery_charging_path .. approxCharge .. '.png'
        elseif status == 'Discharging' then
            text = text .. ' -'
            icon.image = beautiful.battery_path .. approxCharge .. '.png'
        else
			text = text .. ' ~'
			icon.image = beautiful.battery_path .. approxCharge .. '.png'
        end

		if charge_time then
			text = text .. charge_time
		else
			text = text .. "00:0?"
		end

        battery_text.text = text

		--[[
        if status == 'Charging' then
            mirrored_text_with_background.bg = beautiful.widget_green
            mirrored_text_with_background.fg = beautiful.widget_black
        else
            mirrored_text_with_background.bg = beautiful.widget_transparent
            mirrored_text_with_background.fg = beautiful.widget_main_color
        end

        if charge < 15 then
            batteryarc.colors = { beautiful.widget_red }
            if status ~= 'Charging' then
                show_battery_warning()
            end
        elseif charge > 15 and charge < 40 then
            batteryarc.colors = { beautiful.widget_yellow }
        else
            batteryarc.colors = { beautiful.widget_main_color }
        end
        text.text = charge
        ]]
    end)

-- Popup with battery info
-- One way of creating a pop-up notification - naughty.notify
--local notification
--function show_battery_status()
--    awful.spawn.easy_async([[bash -c 'acpi']],
--        function(stdout, _, _, _)
--            notification = naughty.notify {
--                text = stdout,
--                title = "Battery status",
--                timeout = 5,
--                hover_timeout = 0.5,
--                width = 200,
--            }
--        end)
--end

-- battery_widget:connect_signal("mouse::enter", function() show_battery_status() end)
-- battery_widget:connect_signal("mouse::leave", function() naughty.destroy(notification) end)

-- Alternative to naughty.notify - tooltip. You can compare both and choose the preferred one

--battery_popup = awful.tooltip({objects = {battery_widget}})

-- To use colors from beautiful theme put
-- following lines in rc.lua before require("battery"):
-- beautiful.tooltip_fg = beautiful.fg_normal
-- beautiful.tooltip_bg = beautiful.bg_normal

--[[ Show warning notification ]]
function show_battery_warning()
    naughty.notify {
        icon = HOME .. "/.config/awesome/nichosi.png",
        icon_size = 100,
        text = "Huston, we have a problem",
        title = "Battery is dying",
        timeout = 5,
        hover_timeout = 0.5,
        position = "bottom_right",
        bg = "#F06060",
        fg = "#EEE9EF",
        width = 300,
    }
end
