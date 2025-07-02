return {
	-- Command and arguments to start the server.
	cmd = { "lua-language-server" },
	-- Filetypes to automatically attach to.
	filetypes = { "lua" },
	-- Markers indicating the "root directory" of the project.
	root_markers = {
		".luarc.json",
		".stylua.toml",
		".git",
	},
	-- Settings for the language server.
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server the version of Lua being used.
				version = "LuaJIT",
				-- Tell the language server to find Lua modules same way as NeoVim does.
				path = {
					"lua/?.lua",
					"lua/?/init.lua",
				},
			},
			diagnostics = {
				-- Make the language server recognize the `vim` global.
				globals = { "vim" },
			},
			telemetry = {
				-- Do not send telemetry data containing a randomized but unique identifier.
				enable = false,
			},
			workspace = {
				-- Make the language server recognize NeoVim runtime files.
				library = vim.api.nvim_get_runtime_file("", true),
			},
		},
	},
}
