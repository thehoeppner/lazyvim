-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local is_windows = vim.fn.has("win32") or vim.fn.has("win64") or vim.fn.has("win16")
-- for some reason shellslash is being reset to true
if is_windows then
  vim.opt.shellslash = false
  vim.defer_fn(function()
    vim.opt.shellslash = false
  end, 5000)
end
