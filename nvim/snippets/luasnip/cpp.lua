local M = {
	s("fastread", fmt(
			[[
				template<typename T = int>
				inline T read() {
					T x = 0; bool f = 1; char c = getchar();
					while(isdigit(c)^1) f &= (c != 45), c = getchar();
					while(isdigit(c)) x = (x<<1) + (x<<3) + (c^48), c = getchar();
					return f ? x : -x;
				}
			]],
		)
	),
}

return M
