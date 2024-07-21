
local get_visual = function(args, parent)
	if (#parent.snippet.env.LS_SELECT_RAW > 0) then
		return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
	else
		return sn(nil, i(1))
	end
end

local M = {

	-- Greek letters.
	s({ trig = ";a", snippetType = "autosnippet" },
		{
			t("\\alpha")
		}
	),
	s({ trig = ";b", snippetType = "autosnippet" },
		{
			t("\\beta")
		}
	),
	s({ trig = ";g", snippetType = "autosnippet" },
		{
			t("\\gamma")
		}
	),
	s({ trig = ";d", snippetType = "autosnippet" },
		{
			t("\\delta")
		}
	),
	s({ trig = ";e", snippetType = "autosnippet" },
		{
			t("\\epsilon")
		}
	),

	-- Text styles.
	s("tt",
		fmta(
			"\\texttt{<>}",
			{
				d(1, get_visual)
			}
		)
	),
	s("mr",
		fmta(
			"\\mathrm{<>}",
			{
				d(1, get_visual)
			}
		)
	),

	s("ff", fmta("\\frac{<>}{<>}",
		{ i(1), i(2) }
	)),

	-- Inline Math
	s("mi", fmta("$<>$",
		{ d(1, get_visual) }
	)),
	-- Display Math
	s("md", fmta(
		[[
			\[
				<>
			\]
		]],
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
