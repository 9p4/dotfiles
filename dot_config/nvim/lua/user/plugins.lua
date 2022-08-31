-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return require("packer").startup(function(use)
	-- Package Management
	use("https://github.com/wbthomason/packer.nvim")
	use({
		"https://github.com/williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	})

	-- Dependencies
	use("https://github.com/nvim-lua/plenary.nvim")

	-- Theme
	use("https://github.com/marko-cerovac/material.nvim")
	use({ "https://github.com/nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } }) -- Statusbar
	use("https://github.com/goolord/alpha-nvim")
	use("https://github.com/akinsho/bufferline.nvim")

	-- LSP
	use("https://github.com/williamboman/mason-lspconfig.nvim")
	use("https://github.com/neovim/nvim-lspconfig")
	use("https://github.com/jose-elias-alvarez/null-ls.nvim")
	use("https://github.com/RRethy/vim-illuminate")

	-- Java
	use("https://github.com/mfussenegger/nvim-jdtls")

	-- Rust
	use("https://github.com/simrat39/rust-tools.nvim")

	-- Python
	use("https://github.com/mfussenegger/nvim-dap-python")

	-- Autocomplete
	use("hrsh7th/nvim-cmp") -- The completion plugin
	use("hrsh7th/cmp-buffer") -- buffer completions
	use("hrsh7th/cmp-path") -- path completions
	use("saadparwaiz1/cmp_luasnip") -- snippet completions
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")

	-- Snippets
	use("L3MON4D3/LuaSnip") --snippet engine
	use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

	-- Telescope
	use("nvim-telescope/telescope.nvim")

	-- Treesitter
	use({
		"https://github.com/nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	-- Debugging
	use("https://github.com/mfussenegger/nvim-dap")
	use("https://github.com/rcarriga/nvim-dap-ui")

	-- Terminal
	use("https://github.com/akinsho/toggleterm.nvim")

	-- Notifications
	use("https://github.com/rcarriga/nvim-notify")

	-- Which-Key
	use({
		"https://github.com/AckslD/nvim-whichkey-setup.lua",
		config = function()
			require("whichkey_setup").config({
				hide_statusline = false,
				default_keymap_settings = {
					silent = true,
					noremap = true,
				},
				default_mode = "n",
			})
		end,
	})
	use({
		"https://github.com/folke/which-key.nvim",
		config = function()
			require("which-key").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- -- refer to the configuration section below
			})
		end,
	})

	-- Autocomplete
	use({
		"https://github.com/windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	}) -- Automatic closing braces

	use({
		"https://github.com/numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	-- Misc
	use("https://github.com/lewis6991/impatient.nvim")
	use("https://github.com/kyazdani42/nvim-tree.lua")
	use("https://github.com/ahmedkhalf/project.nvim")
end)
