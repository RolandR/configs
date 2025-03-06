---------------------------
-- Draemm awesome theme --
---------------------------


local theme = {}

theme.font          = "sans 8"

theme.bg_normal     = "#131d1d"
theme.bg_focus      = "#014950"
theme.bg_urgent     = "#e34d58"
theme.bg_minimize   = "#131d1d"
theme.bg_systray    = "#014950"

theme.fg_normal     = "#1599a1"
--theme.fg_focus      = "#a5fefe"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffced1"
theme.fg_minimize   = "#014950"

theme.useless_gap   = 0
theme.border_width  = 1
theme.border_normal = "#131d1d"
theme.border_focus  = "#1599a1"
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
theme.taglist_squares_sel         = "/usr/share/awesome/themes/draemm/taglist/squarefw.png"
theme.taglist_squares_unsel       = "/usr/share/awesome/themes/draemm/taglist/squarew.png"
theme.taglist_squares_sel_empty   = "/usr/share/awesome/themes/draemm/taglist/squaree.png"
theme.taglist_squares_unsel_empty = "/usr/share/awesome/themes/draemm/taglist/squaree.png"

--[[theme.tasklist_bg_image_normal = "/usr/share/awesome/themes/draemm/taglist/squarew.png"
theme.tasklist_bg_image_focus = "/usr/share/awesome/themes/draemm/taglist/squarefw.png"
theme.tasklist_bg_image_minimize = "/usr/share/awesome/themes/draemm/taglist/squaree.png"
theme.tasklist_bg_image_urgent = "/usr/share/awesome/themes/draemm/taglist/squarei.png"]]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = "/usr/share/awesome/themes/draemm/submenu.png"
theme.menu_height = 15
theme.menu_width  = 100

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = "/usr/share/awesome/themes/draemm/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = "/usr/share/awesome/themes/draemm/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = "/usr/share/awesome/themes/draemm/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = "/usr/share/awesome/themes/draemm/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = "/usr/share/awesome/themes/draemm/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = "/usr/share/awesome/themes/draemm/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = "/usr/share/awesome/themes/draemm/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = "/usr/share/awesome/themes/draemm/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = "/usr/share/awesome/themes/draemm/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = "/usr/share/awesome/themes/draemm/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = "/usr/share/awesome/themes/draemm/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = "/usr/share/awesome/themes/draemm/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = "/usr/share/awesome/themes/draemm/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = "/usr/share/awesome/themes/draemm/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = "/usr/share/awesome/themes/draemm/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = "/usr/share/awesome/themes/draemm/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = "/usr/share/awesome/themes/draemm/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = "/usr/share/awesome/themes/draemm/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = "/usr/share/awesome/themes/draemm/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = "/usr/share/awesome/themes/draemm/titlebar/maximized_focus_active.png"

theme.wallpaper = "/usr/share/awesome/themes/draemm/background.png"

-- You can use your own layout icons like this:
theme.layout_fairh = "/usr/share/awesome/themes/draemm/layouts/fairhw.png"
theme.layout_fairv = "/usr/share/awesome/themes/draemm/layouts/fairvw.png"
theme.layout_floating  = "/usr/share/awesome/themes/draemm/layouts/floatingw.png"
theme.layout_magnifier = "/usr/share/awesome/themes/draemm/layouts/magnifierw.png"
theme.layout_max = "/usr/share/awesome/themes/draemm/layouts/maxw.png"
theme.layout_fullscreen = "/usr/share/awesome/themes/draemm/layouts/fullscreenw.png"
theme.layout_tilebottom = "/usr/share/awesome/themes/draemm/layouts/tilebottomw.png"
theme.layout_tileleft   = "/usr/share/awesome/themes/draemm/layouts/tileleftw.png"
theme.layout_tile = "/usr/share/awesome/themes/draemm/layouts/tilew.png"
theme.layout_tiletop = "/usr/share/awesome/themes/draemm/layouts/tiletopw.png"
theme.layout_spiral  = "/usr/share/awesome/themes/draemm/layouts/spiralw.png"
theme.layout_dwindle = "/usr/share/awesome/themes/draemm/layouts/dwindlew.png"
theme.layout_cornernw = "/usr/share/awesome/themes/draemm/layouts/cornernww.png"
theme.layout_cornerne = "/usr/share/awesome/themes/draemm/layouts/cornernew.png"
theme.layout_cornersw = "/usr/share/awesome/themes/draemm/layouts/cornersww.png"
theme.layout_cornerse = "/usr/share/awesome/themes/draemm/layouts/cornersew.png"

theme.awesome_icon = "/usr/share/awesome/themes/draemm/awesome.png"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
