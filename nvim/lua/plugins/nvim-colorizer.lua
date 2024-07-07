return {
	name = "NvimColorizer", "norcalli/nvim-colorizer.lua",

	config = function()
		require("colorizer").setup({ "*" }, {
			RGB = true,
			RRGGBB = true,
			RRGGBBAA = true,
			names = false,
			mode = "background"
		})
	end
}
