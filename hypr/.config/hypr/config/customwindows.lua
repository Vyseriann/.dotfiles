--------------------------------
--- CUSTOM WINDOW BEHAVIOURS ---
--------------------------------

-- fastfetch boot left top (workspace 1)
hl.window_rule({
	name = "fastfetch-popup",
	match = {
		title = "fastfetch-popup",
	},
	float = true,
	size = { 677, 550 },
	center = true,
	no_initial_focus = true,
})

-- btop boot bottom left (workspace 1)
hl.window_rule({
	name = "btop-diagnostic",
	match = {
		title = "btop-diagnostic",
	},
	opacity = "0.8 override",
	float = true,
	size = { 677, 366 },
	center = true,
	no_initial_focus = true,
})

-- WiFi Configurator (GUI Window)
hl.window_rule({
	name = "wifi-waybar",
	match = {
		class = "org.nmrs.ui",
	},
	float = true,
	size = { 350, 450 },
	-- Math: 1366 (Width) - 350 (Window) - 50 (Gap) = 980
	move = { "monitor_w-window_x-50", 50 },
	pin = true,
	stay_focused = true,
	animation = "slide down",
})

-- Bluetooth Configurator (TUI Window inside Ghostty)
hl.window_rule({
	name = "bluetooth-waybar",
	match = {
		title = "bluetooth",
	},
	float = true,
	size = { 350, 450 },
	-- Math: 1366 (Width) - 350 (Window) - 50 (Gap) = 980
	move = { "monitor_w-window_x-50", 50 },
	pin = true,
	stay_focused = true,
	animation = "slide down",
})

-- Pavucontrol Volume Configurator
hl.window_rule({
	name = "pavucontrol-waybar",
	match = {
		class = "org.pulseaudio.pavucontrol",
	},
	float = true,
	size = { 400, 250 },
	-- Math: 1366 (Width) - 350 (Window) - 100 (Gap) =
	move = { "monitor_w-window_x-100", 50 },
	pin = true,
	stay_focused = true,
	animation = "slide down",
})

-- Calendar waybar Configurator (launched via chromium)
hl.window_rule({
	name = "calendar-pop",
	match = {
		class = "chrome-calendar.google.com__-Profile_2",
	},
	float = true,
	size = { 1200, 600 },
	-- Math: 1366 (Width) - 1200 (Window) / 2 = 83; centred
	move = { "(monitor_w-window_x)*0.5", 50 },
	pin = true,
	stay_focused = true,
	animation = "slide down",
})
