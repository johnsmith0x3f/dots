-- Function to get visual selection.
local get_visual = function(args, parent)
	if (#parent.snippet.env.LS_SELECT_RAW > 0) then
		return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
	else
		return sn(nil, i(1))
	end
end

local M = {

-- Math {{{
	
	-- Inline/Display Math
	s("mi", fmta("$<>$",
		{ d(1, get_visual) }
	)),
	s("md", fmta(
		[[
			\[
				<>
			\]
		]],
		{ d(1, get_visual) }
	)),

	-- Sub/Sup-scripts
	s({ trig = "^", wordTrig = false, snippetType = "autosnippet" },
		fmta("^{<>}",
			{ i(1) }
		)
	),
	s({ trig = "_", wordTrig = false, snippetType = "autosnippet" },
		fmta("_{<>}",
			{ i(1) }
		)
	),

	-- Text Styles
	s("mb", fmta("\\mathbf{<>}",
		{ d(1, get_visual) }
	)),
	s("mc", fmta("\\mathcal{<>}",
		{ d(1, get_visual) }
	)),
	s("mr", fmta("\\mathrm{<>}",
		{ d(1, get_visual) }
	)),

	-- Greek Letters
	s({ trig = ";a", snippetType = "autosnippet" },
		{ t("\\alpha") }
	),
	s({ trig = ";b", snippetType = "autosnippet" },
		{ t("\\beta") }
	),
	s({ trig = ";G", snippetType = "autosnippet" },
		{ t("\\Gamma") }
	),
	s({ trig = ";g", snippetType = "autosnippet" },
		{ t("\\gamma") }
	),
	s({ trig = ";d", snippetType = "autosnippet" },
		{ t("\\delta") }
	),
	s({ trig = ";D", snippetType = "autosnippet" },
		{ t("\\Delta") }
	),
	s({ trig = ";e", snippetType = "autosnippet" },
		{ t("\\epsilon") }
	),
	s({ trig = ";ve", snippetType = "autosnippet" },
		{ t("\\varepsilon") }
	),
	s({ trig = ";z", snippetType = "autosnippet" },
		{ t("\\zeta") }
	),
	s({ trig = ";t", snippetType = "autosnippet" },
		{ t("\\theta") }
	),
	s({ trig = ";l", snippetType = "autosnippet" },
		{ t("\\lambda") }
	),
	s({ trig = ";s", snippetType = "autosnippet" },
		{ t("\\sigma") }
	),
	s({ trig = ";vp", snippetType = "autosnippet" },
		{ t("\\varphi") }
	),

	-- Fraction
	s("fr", fmta("\\frac{<>}{<>}",
		{ i(1), i(2) }
	)),
	s("sq", fmta("\\sqrt[<>]{<>}",
		{ i(1), i(2) }
	)),

	-- Sums
	s("sum", fmta("\\sum_{<>}^{<>}",
		{ i(1), i(2) }
	)),
	s("prd", fmta("\\prod_{<>}^{<>}",
		{ i(1), i(2) }
	)),
	s("int", fmta("\\int_{<>}^{<>}",
		{ i(1), i(2) }
	)),

	-- }}}

	-- Text styles.
	s("tt", fmta("\\texttt{<>}",
		{ d(1, get_visual) }
	)),
		
	s({ trig="env", snippetType="autosnippet" },
		fmta(
			[[
				\begin{<>}
					<>
				\end{<>}
			]],
			{
				i(1, "environment"),
				i(2, "body"),
				rep(1)
			}
		)
	),

}

return M
