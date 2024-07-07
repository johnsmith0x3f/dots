return {}
return {
	"nvim-lua/plenary.nvim", name = "Plenary",
	lazy = true,

	config = function()
		opts.rocks.enabled = false
	end,
}
