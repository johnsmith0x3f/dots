return {
	-- Command and arguments to start the server.
	cmd = { "clangd", "--background-index" },
	-- Filetypes to automatically attach to.
	filetypes = { "c", "cpp", "objc", "objcpp" },
	-- Markers indicating the "root directory" of the project.
	root_markers = { ".clangd", ".git" },
}
