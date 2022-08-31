-- Hacked together from LunarVim

require("user.plugins")
require("user.alpha")
require("user.autopairs")
require("user.cmp")
require("user.comment")
require("user.dap")
require("user.gitsigns")
require("user.illuminate")
require("user.impatient")
require("user.keymaps")
require("user.lsp")
require("user.lualine")
require("user.nvim-tree")
require("user.options")
require("user.toggleterm")
require("user.treesitter")
require("user.whichkey")
require("user.telescope")
require("user.bufferline") -- Has to be after stuff

-- Theme
vim.cmd("colorscheme material")
