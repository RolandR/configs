---------------------------
-- Draemm awesome theme --
---------------------------

local gears = require("gears")
local awful = require("awful")
local wibox = require("wibox")

local os    = { getenv = os.getenv }

local theme = {}

theme.dir           = os.getenv("HOME") .. "/.config/awesome/themes/draemm/"

theme.font          = "Liberation Mono 9"

theme.bg_normal     = "#1c3636"
theme.bg_focus      = "#014950"
theme.bg_urgent     = "#e34d58"
theme.bg_minimize   = "#131d1d"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#8beeee"
--theme.fg_normal     = "#1599a1"
--theme.fg_focus      = "#a5fefe"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffced1"
theme.fg_minimize   = "#014950"

theme.useless_gap   = 0
theme.border_width  = 1
theme.border_normal = "#0f6b71"
theme.border_focus  = "#40c8d0"
theme.border_marked = "#e34d58"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Display the taglist squares
theme.taglist_squares_sel         = theme.dir .. "taglist/squarefw.png"
theme.taglist_squares_unsel       = theme.dir .. "taglist/squarew.png"
theme.taglist_squares_sel_empty   = theme.dir .. "taglist/squaree.png"
theme.taglist_squares_unsel_empty = theme.dir .. "taglist/squaree.png"
theme.taglist_spacing = 0
theme.taglist_font = "Liberation Mono 10"
theme.taglist_shape = gears.shape.rectangle

--[[theme.tasklist_bg_image_normal = theme.dir .. "taglist/squarew.png"
theme.tasklist_bg_image_focus = theme.dir .. "taglist/squarefw.png"
theme.tasklist_bg_image_minimize = theme.dir .. "taglist/squaree.png"
theme.tasklist_bg_image_urgent = theme.dir .. "taglist/squarei.png"]]


theme.tasklist_shape_border_width = 1
theme.tasklist_shape_border_color = "#00ff00"

theme.tasklist_spacing = 0

-- notification styling

theme.notification_icon_size = 32

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = theme.dir .. "submenu.png"
theme.menu_height = 15
theme.menu_width  = 100

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
theme.foobar = "#00ff00"

-- Define the image to load
theme.titlebar_close_button_normal = theme.dir .. "titlebar/close_normal.png"
theme.titlebar_close_button_focus  = theme.dir .. "titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = theme.dir .. "titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = theme.dir .. "titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = theme.dir .. "titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = theme.dir .. "titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = theme.dir .. "titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = theme.dir .. "titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = theme.dir .. "titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = theme.dir .. "titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = theme.dir .. "titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = theme.dir .. "titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = theme.dir .. "titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = theme.dir .. "titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = theme.dir .. "titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = theme.dir .. "titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = theme.dir .. "titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = theme.dir .. "titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = theme.dir .. "titlebar/maximized_focus_active.png"

theme.wallpaper = theme.dir .. "background_large.jpg"

-- You can use your own layout icons like this:
theme.layout_fairh = theme.dir .. "layouts/fairhw.png"
theme.layout_fairv = theme.dir .. "layouts/fairvw.png"
theme.layout_floating  = theme.dir .. "layouts/floatingw.png"
theme.layout_magnifier = theme.dir .. "layouts/magnifierw.png"
theme.layout_max = theme.dir .. "layouts/maxw.png"
theme.layout_fullscreen = theme.dir .. "layouts/fullscreenw.png"
theme.layout_tilebottom = theme.dir .. "layouts/tilebottomw.png"
theme.layout_tileleft   = theme.dir .. "layouts/tileleftw.png"
theme.layout_tile = theme.dir .. "layouts/tilew.png"
theme.layout_tiletop = theme.dir .. "layouts/tiletopw.png"
theme.layout_spiral  = theme.dir .. "layouts/spiralw.png"
theme.layout_dwindle = theme.dir .. "layouts/dwindlew.png"
theme.layout_cornernw = theme.dir .. "layouts/cornernww.png"
theme.layout_cornerne = theme.dir .. "layouts/cornernew.png"
theme.layout_cornersw = theme.dir .. "layouts/cornersww.png"
theme.layout_cornerse = theme.dir .. "layouts/cornersew.png"

theme.awesome_icon = theme.dir .. "awesome.png"

theme.cpu_icon = theme.dir .. "widgets/cpu.png"

theme.gpu_icon = theme.dir .. "widgets/gpu.png"

theme.mem_icon = theme.dir .. "widgets/mem.png"

theme.separator = theme.dir .. "widgets/separator.png"

theme.battery_icon = theme.dir .. "widgets/battery.png"
theme.battery_path = theme.dir .. "widgets/battery-"
theme.battery_charging_path = theme.dir .. "widgets/battery-c"
theme.battery_charging_icon = theme.dir .. "widgets/battery-charging.png"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
