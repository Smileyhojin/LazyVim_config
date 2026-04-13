-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Word wrap for prose and data languages
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "json", "jsonl", "tex", "toml" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true -- break at word boundaries
    vim.opt_local.breakindent = true -- preserve indentation on wrapped lines
    vim.opt_local.textwidth = 0 -- disable hard line breaking
  end,
})
