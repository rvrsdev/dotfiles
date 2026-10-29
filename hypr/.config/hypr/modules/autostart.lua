local notif_daemon = "mako"

hl.on("hyprland.start", function()
	hl.exec_cmd(
		"waypaper --backend 'awww' --wallpaper '/home/rvrs/Pictures/Walls/ascii-cyberpunkedgerunners2-1080p.jpg'"
	)
	-- hl.exec_cmd("waypaper --backend 'awww' --random --folder '/home/rvrs/Pictures/Walls'")
	hl.exec_cmd("nm-applet")
	hl.exec_cmd("waybar")
	hl.exec_cmd(notif_daemon)
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	-- hl.exec_cmd("kitty")
	-- hl.exec_cmd("xwaylandvideobridge")
end)
