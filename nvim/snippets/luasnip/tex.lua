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
	s({ trig = ";ga", snippetType = "autosnippet" },
		{
			t("\\alpha")
		}
	),
	s({ trig = ";gb", snippetType = "autosnippet" },
		{
			t("\\beta")
		}
	),
	s({ trig = ";gg", snippetType = "autosnippet" },
		{
			t("\\gamma")
		}
	),
	s({ trig = ";gd", snippetType = "autosnippet" },
		{
			t("\\delta")
		}
	),
	s({ trig = ";ge", snippetType = "autosnippet" },
		{
			t("\\epsilon")
		}
	),

	-- Fraction
	s("ff", fmta("\\frac{<>}{<>}",
		{ i(1), i(2) }
	)),
	s("sum", fmta("\\frac{<>}{<>}",
		{ i(1), i(2) }
	)),
	s("prd", fmta("\\frac{<>}{<>}",
		{ i(1), i(2) }
	)),
	s("int", fmta("\\frac{<>}{<>}",
		{ i(1), i(2) }
	)),

	-- }}}

	-- Text styles.
	s("tt", fmta("\\texttt{<>}",
		{ d(1, get_visual) }
	)),
		
	s({ trig=";env", snippetType="autosnippet" },
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
