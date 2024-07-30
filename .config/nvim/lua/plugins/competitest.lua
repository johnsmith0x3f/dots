return {
	name = "CompetiTest", "xeluxee/competitest.nvim",
	
	lazy = false,
	keys = {
		{ mode = "n", "<F5>", "<Cmd>CompetiTest run<CR>" },
		{ mode = "n", "<F6>", "<Cmd>CompetiTest add_testcase<CR>" },
		{ mode = "n", "<F7>", "<Cmd>CompetiTest edit_testcase<CR>" },
		{ mode = "n", "<F8>", "<Cmd>CompetiTest delete_testcase<CR>" }
	},

	opts = {
		runner_ui = {
			interface = "popup"
		},
		compile_directory = ".",
		compile_command = {
			c = { exec = "gcc", args = { "-Wall", "$(FNAME)", "-o", "$(FNOEXT).out" } },
			cpp = { exec = "g++", args = { "-Wall", "$(FNAME)", "-o", "$(FNOEXT).out" } }
		},
		running_directory = ".",
		run_command = {
			c = { exec = "./$(FNOEXT).out" },
			cpp = { exec = "./$(FNOEXT).out" }
		},
		testcases_input_file_format = "$(FNOEXT)$(TCNUM).in",
		testcases_output_file_format = "$(FNOEXT)$(TCNUM).ans"
	}
}
