hl.config({
	general = {
        gaps_out = 2,
		gaps_in = 2,

		border_size = 1,

		col = {
			active_border = "#faf9f6",
			inactive_border = "#121320",
		},

		-- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
		allow_tearing = true,

		layout = "dwindle",
	},

	decoration = {
		rounding = 0,
		rounding_power = 0,

		active_opacity = 1,
		inactive_opacity = 1,

		shadow = { enabled = false },

		blur = { enabled = false },
	},

	animations = {
		enabled = true,
	},
})

-- Smooth, responsive curves and animations.
hl.curve("emphasized", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })
hl.curve("decelerate", { type = "bezier", points = { { 0.1, 1 }, { 0.2, 1 } } })
hl.curve("accelerate", { type = "bezier", points = { { 0.7, 0 }, { 0.84, 0 } } })
hl.curve("smooth", { type = "bezier", points = { { 0.4, 0 }, { 0.2, 1 } } })
hl.curve("quick", { type = "bezier", points = { { 0.2, 0 }, { 0, 1 } } })

-- A lightly underdamped spring gives windows a subtle, controlled bounce.
hl.curve("windowSpring", { type = "spring", mass = 1, stiffness = 92, dampening = 17 })

hl.animation({ leaf = "global", enabled = true, speed = 1, bezier = "smooth" })
hl.animation({ leaf = "border", enabled = true, speed = 4, bezier = "decelerate" })

hl.animation({ leaf = "windows", enabled = true, speed = 4.5, spring = "windowSpring" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.2, spring = "windowSpring", style = "popin 92%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3.2, bezier = "accelerate", style = "popin 92%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 3.2, bezier = "decelerate" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2.6, bezier = "accelerate" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.5, bezier = "smooth" })

hl.animation({ leaf = "layers", enabled = true, speed = 4, bezier = "smooth" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4.2, bezier = "emphasized", style = "slide" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 3.2, bezier = "accelerate", style = "slide" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 3.2, bezier = "decelerate" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 2.6, bezier = "accelerate" })

hl.animation({ leaf = "workspaces", enabled = true, speed = 5.2, bezier = "smooth", style = "slide" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 5.2, bezier = "decelerate", style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 5.2, bezier = "smooth", style = "slide" })
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 4, bezier = "quick" })

hl.config({
	dwindle = {
		preserve_split = true, -- You probably want this
	},
})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
	master = {
		new_status = "master",
	},
})

-- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
hl.config({
	scrolling = {
		fullscreen_on_one_column = true,
	},
})

----------------
----  MISC  ----
----------------

hl.config({
	misc = {
		force_default_wallpaper = 0, -- Set to 0 or 1 to disable the anime mascot wallpapers
		disable_hyprland_logo = true, -- If true disables the random hyprland logo / anime girl background. :(
	},
})
