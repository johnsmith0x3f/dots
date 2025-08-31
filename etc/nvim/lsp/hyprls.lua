return {
	-- Command and arguments to start the server.
	cmd = { "hyprls", "--stdio" },
	-- Filetypes to automatically attach to.
	filetypes = { "hyprlang" },
	-- Markers indicating the "root directory" of the project.
	root_markers = { "hyprland.conf", ".git" },
}
