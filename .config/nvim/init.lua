-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Enable catppuccin
require("catppuccin").setup()

-- Set catppuccin colorscheme
vim.cmd.colorscheme("catppuccin-mocha")
