return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
		},
		config = function()
			local dap, dapui = require("dap"), require("dapui")
			dapui.setup()

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end

			dap.adapters.cppdbg = {
				type = "executable",
				command = "gdb",
				name = "cppdbg",
				args = { "--interpreter=dap" },
			}

			dap.configurations.cpp = {
				{
					name = "Debug",
					type = "cppdbg",
					request = "launch",
					program = function()
						return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
					end,
					cwd = "${workspaceFolder}",
					stopAtEntry = false,
					setupCommands = {
						{
							text = "-enable-pretty-printing",
							description = "Enable pretty printing for gdb",
							ignoreFailures = false,
						},
					},
					miDebuggerPath = "gdb",
				},
			}

			vim.keymap.set("n", "<Leader>bb", dap.toggle_breakpoint, {})
			vim.keymap.set("n", "<Leader>bc", dap.continue, {})
		end,
	},
}
