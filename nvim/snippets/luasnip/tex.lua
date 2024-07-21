local M = {
	-- Greek letters.
	s({ trig = ";a", snippetType = "autosnippet" },
		{
			t("\\alpha")
		}),
	s({ trig = ";b", snippetType = "autosnippet" },
		{
			t("\\beta")
		}),
	s({ trig = ";g", snippetType = "autosnippet" },
		{
			t("\\gamma")
		}),
	s({ trig = ";d", snippetType = "autosnippet" },
		{
			t("\\delta")
		}),
	s({ trig = ";e", snippetType = "autosnippet" },
		{
			t("\\epsilon")
		}),

	-- Text styles.
	s("tt",
		fmta(
			"\\texttt{<>}",
			{
				i(1)
			}
		)
	),
	s("mr",
		fmta(
			"\\mathrm{<>}",
			{
				i(1)
			}
		)
	),

	s("ff",
		fmta(
			"\\frac{<>}{<>}",
			{
				i(1),
				i(2)
			}
		)
	),
	
	s({ trig="env", snippetType="autosnippet" },
		fmta(
			[[
				\begin{<>}
				<>
				\end{<>}
			]],
			{
				i(1),
				i(2),
				rep(1)
			}
		)
	),

}

return M
