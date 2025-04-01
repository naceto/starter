return {
  {
    "mfussenegger/nvim-dap",
    keys = {
      {
        "<F5>",
        function()
          require("dap").continue()
        end,
        desc = "Debug: Start/Continue",
      },
      {
        "<F10>",
        function()
          require("dap").step_over()
        end,
        desc = "Debug: Step Over",
      },
      {
        "<F11>",
        function()
          require("dap").step_into()
        end,
        desc = "Debug: Step Into",
      },
      {
        "<F23>", --SHIFT+F11
        function()
          require("dap").step_out()
        end,
        desc = "Debug: Step Out",
      },
      {
        "<F9>",
        function()
          require("dap").toggle_breakpoint()
        end,
        desc = "Debug: Toggle Breakpoint",
      },
      {
        "<F21>", -- SHIFT+F9
        function()
          require("dap").set_breakpoint(vim.fn.input("Condition: "))
        end,
        desc = "Set conditional breakpoint",
      },
      {
        "<C-S-F5>",
        function()
          require("dap").restart()
        end,
        desc = "Debug: Restart",
      },
      {
        "<F17>",
        function()
          require("dap").terminate()
        end,
        desc = "Debug: Stop Debugging",
      },
      {
        "<F22>",
        function()
          require("dap").run_to_cursor()
        end,
        desc = "Debug: Run to Cursor (Ctrl + F10)",
      },
    },
  },
}
