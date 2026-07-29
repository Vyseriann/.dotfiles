-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function()
	-- Hyprlock
	-- hl.exec_cmd("hyprlock")
	-- Hyprpaper
	hl.exec_cmd("hyprpaper")
	-- Hypridle
	hl.exec_cmd("hypridle")
	-- Waybar
	hl.exec_cmd("waybar")
	-- Media playback in waybar
	hl.exec_cmd("playerctld daemon")
	-- Some permissions idk
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	-- Sway notififcation centre
	hl.exec_cmd("swaync")
	-- Cursor
	hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 24")
	-- Left window: Launches fastfetch after 1 second
	--	hl.exec_cmd(
	--		"sleep 1 && ghostty --title=fastfetch-boot -e zsh -c 'fastfetch; sleep 2 && echo \"\\n--- Tailscale Status ---\\n\"; tailscale status; exec zsh'"
	--	)
	-- launches btop after 2 seconds
	--hl.exec_cmd("sleep 3 && exec ghostty --title=btop-boot -e btop")
	-- right window: launches blank ghostty terminal after 3 seconds
	--	hl.exec_cmd("sleep 3 && ghostty --title=ghostty-boot ")
	-- Dispatches a command to switch focus to Workspace 2 on boot after 6 seconds
	--	hl.timer(function()
	--		hl.dispatch(hl.dsp.focus({ workspace = "2" }))
	--	-end, { timeout = 6000, type = "oneshot" })
end)
