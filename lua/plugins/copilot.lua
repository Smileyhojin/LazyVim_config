-- Integration with blink.cmp
-- The copilot suggestions are shown in the completion menu, along with the LSP completions.
return {
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = { enabled = false }, -- disabled, blink.cmp handles it
      panel = { enabled = false },
      filetypes = { ["*"] = true },
    },
  },
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
        ["<CR>"] = { "accept", "fallback" },
      },
    },
  },
}

-- Alternative mode: vscode/zed style inline suggestions.
-- The copilot suggestions are shown as ghost text, independent of the completion menu.
-- return {
--   {
--     "zbirenbaum/copilot.lua",
--     opts = {
--       suggestion = {
--         enabled = true,
--         auto_trigger = true,
--         hide_during_completion = true,
--         keymap = {
--           accept = "<M-l>",
--           next = "<M-]>",
--           prev = "<M-[>",
--           dismiss = "<C-]>",
--         },
--       },
--       panel = { enabled = false },
--       filetypes = { ["*"] = true },
--     },
--   },
--   {
--     "saghen/blink.cmp",
--     opts = {
--       sources = {
--         -- remove copilot from blink.cmp sources
--         providers = {
--           copilot = { enabled = false },
--         },
--       },
--       keymap = {
--         ["<Tab>"] = { "select_next", "fallback" },
--         ["<S-Tab>"] = { "select_prev", "fallback" },
--         ["<CR>"] = { "accept", "fallback" },
--       },
--     },
--   },
-- }
