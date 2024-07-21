local M = {
	s("fastread", t(
		"template<typename T = int>",
		"inline T read() {",
		"\tT x = 0; bool f = 1; char c = getchar();",
		"\twhile(isdigit(c)^1) f &= (c != 45), c = getchar();",
		"\twhile(isdigit(c)) x = (x<<1) + (x<<3) + (c^48), c = getchar();",
		"\treturn f ? x : -x;",
		"}"
	)),
}

return M
