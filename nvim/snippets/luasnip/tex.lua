return {
    -- Greek letters.
    s({ trig = ";a", snippetType = "autosnippet" }, { t("\\alpha") }),
    s({ trig = ";b", snippetType = "autosnippet" }, { t("\\beta") }),
    s({ trig = ";g", snippetType = "autosnippet" }, { t("\\gamma") }),
    s({ trig = ";e", snippetType = "autosnippet" }, { t("\\epsilon") }),

    -- Text styles.
    s("tt", fmta("\\texttt{<>}", { i(1) })),
}
