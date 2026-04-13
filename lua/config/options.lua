-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.lsp.inlay_hint.enable(true)
vim.g.lazyvim_rust_diagnostics = "rust-analyzer"

-- Use OSC52 for clipboard (works over SSH transparently)
vim.g.clipboard = {
  name = "osc52",
  copy = {
    ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
    ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
  },
  paste = {
    ["+"] = function() return vim.fn.split(vim.fn.getreg('"'), "\n") end,
    ["*"] = function() return vim.fn.split(vim.fn.getreg('"'), "\n") end,
  },
}
vim.opt.clipboard = "unnamedplus"
