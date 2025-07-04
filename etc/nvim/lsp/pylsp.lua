return {
	-- Command and arguments to start the server.
	cmd = { "pylsp" },
	-- Filetypes to automatically attach to.
	filetypes = { "python" },
	-- Markers indicating the "root directory" of the project.
	root_markers = {
		"pyproject.toml",
		"setup.py",
		"requirements.txt",
		".git",
	},
	-- Settings for the language server.
	settings = {
		pylsp = {
			plugins = {
				pycodestyle = {
					ignore = { "E401", "E501" }, -- Ignore line length limit.
				},
			},
		},
	},
}
