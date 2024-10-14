local wezterm = require("wezterm")
local action = wezterm.action

local M = {}

M.configurate = function(config)
	config.enable_kitty_keyboard = true -- To make super key work in nvim. Won't work through tmux.
	config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }

	config.keys = {
		-- close application
		{
			key = "q",
			mods = "SUPER",
			action = action.QuitApplication,
		},

		-- copy/paste
		{
			key = "c",
			mods = "SUPER",
			action = action.CopyTo("Clipboard"),
		},
		{
			key = "v",
			mods = "SUPER",
			action = action.PasteFrom("Clipboard"),
		},

		-- create tab
		{
			key = "t",
			mods = "SUPER",
			action = action.SpawnTab("CurrentPaneDomain"),
		},

		-- new window
		{
			key = "t",
			mods = "SUPER|SHIFT",
			action = action.SpawnWindow,
		},

		-- close tab
		{
			key = "w",
			mods = "SUPER|SHIFT",
			action = action.CloseCurrentTab({ confirm = false }),
		},

		-- cycle through tabs
		{ key = "[", mods = "SUPER", action = action.ActivateTabRelative(-1) },
		{ key = "]", mods = "SUPER", action = action.ActivateTabRelative(1) },

		-- rotate panes
		{
			key = "Space",
			mods = "LEADER",
			action = action.RotatePanes("Clockwise"),
		},

		-- show pane selection mode, swap active pane with selected
		{
			key = "0",
			mods = "LEADER",
			action = action.PaneSelect({
				mode = "SwapWithActive",
			}),
		},

		-- Split vertically.
		{
			key = "-",
			mods = "LEADER",
			action = action.SplitPane({
				direction = "Right",
				size = { Percent = 50 },
			}),
		},

		-- Split horizontally.
		{
			key = "=",
			mods = "LEADER",
			action = action.SplitPane({
				direction = "Down",
				size = { Percent = 50 },
			}),
		},

		-- Toggle pane select.
		{
			key = "b",
			mods = "LEADER",
			action = action.PaneSelect({ alphabet = "1234567890" }),
		},

		-- Close current pane
		{
			key = "w",
			mods = "SUPER",
			action = action.CloseCurrentPane({ confirm = false }),
		},

		-- Zoom pane.
		{ key = "z", mods = "LEADER", action = action.TogglePaneZoomState },

		-- Activate copy mode.
		{ key = "c", mods = "LEADER", action = action.ActivateCopyMode },
		{ key = "Escape", mods = "SUPER", action = action.ActivateCopyMode },

		-- Non native full screen here - I call it "maximize", because I still use native full screen,
		-- even if it's disabled it in wezterm.
		{ key = ",", mods = "SUPER", action = action.ToggleFullScreen },
	}
end

return M
