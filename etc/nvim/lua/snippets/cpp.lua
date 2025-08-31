local M = {
	-- Fast Read/Write
	s("fastread", t({
		"template <typename T = int>",
		"constexpr T read() {",
		"\tT x = 0; bool f = 1; char c = getchar();",
		"\twhile(isdigit(c) ^ 1) f &= (c != 45), c = getchar();",
		"\twhile(isdigit(c)) x = (x << 1) + (x << 3) + (c ^ 48), c = getchar();",
		"\treturn f ? x : -x;",
		"}"
	})),
	s("fastwrite", t({
		"template <typename T = int>",
		"constexpr void write(const T &x) {",
		"\tif(x < 0) return write(-x);",
		"\tif(x > 9) write(x / 10);",
		"\tputchar(x % 10 + 48);",
		"}",
	})),

	-- Binary Exponent
	s("binexp", t({
		"template <typename T = int, const T p = P>",
		"constexpr T binExp(const T &a, T b = p - 2) {",
		"\tT res = 1;",
		"\tfor(T x = a; b; x = x * x % p, b >>= 1)",
		"\t\tif(b & 1) res = res * x % p;",
		"\treturn res;",
		"}",
	})),
	s("modint", t({
		"template <typename T = int, const T p = P>",
		"class ModInt {",
		"\tprivate:",
		"\t\tT v;",
		"\tpublic:",
		"\t\tModInt(): v(0) {}",
		"\t\tModInt(const int &x): v(x) { assert(0 <= x && x < p); }",
		"\t\tModInt operator + (const ModInt &o) const {",
		"\t\t\treturn v + o.v < p ? v + o.v : v + o.v - p;",
		"\t\t}",
		"\t\tModInt operator - (const ModInt &o) const {",
		"\t\t\treturn v - o.v < 0 ? v + o.v + p : v + o.v;",
		"\t\t}",
		"\t\tModInt operator * (const ModInt &o) const {",
		"\t\t\treturn 1ll * v * o.v % p;",
		"\t\t}",
		"\t\tModInt operator += (const ModInt &o) {",
		"\t\t\treturn (v += o.v) < p ? v : (v -= p);",
		"\t\t}",
		"\t\tModInt operator -= (const ModInt &o) {",
		"\t\t\treturn (v -= o.v) < 0 ? (v += p) : v;",
		"\t\t}",
		"\t\tModInt operator *= (const ModInt &o) {",
		"\t\t\treturn (v *= 1ll * o.v) %= p;",
		"\t\t}",
		"\t\tT operator () (void) const {",
		"\t\t\treturn v;",
		"\t\t}",
		"};",
	}))
}

return M
