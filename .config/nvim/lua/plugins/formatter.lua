return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        shtml = { "superhtml" },
        ziggy = { "ziggy" },
        ziggy_schema = { "ziggy_schema" },
      },
      formatters = {
        superhtml = {
          inherit = false,
          command = "superhtml",
          stdin = true,
          args = { "fmt", "--stdin" },
        },
        ziggy = {
          inherit = false,
          command = "ziggy",
          stdin = true,
          args = { "fmt", "--stdin" },
        },
        ziggy_schema = {
          inherit = false,
          command = "ziggy",
          stdin = true,
          args = { "fmt", "--stdin-schema" },
        },
      },
    },
  },
}
