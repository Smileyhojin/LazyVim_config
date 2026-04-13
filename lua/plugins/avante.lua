return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false,
  opts = {
    provider = "copilot",
    providers = {
      copilot = {
        model = "claude-haiku-4.5",
        extra_request_body = {
          max_tokens = 147456, -- 144k tokens
        },
      },
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
    "stevearc/dressing.nvim",
  },
  build = "make",
}
