require("lspconfig").pylsp.setup({
	cmd = { "/home/ersei/.local/share/nvim/mason/bin/pylsp" },
})

require("dap-python").setup("/home/ersei/.local/share/nvim/mason/packages/debugpy/venv/bin/python3")
