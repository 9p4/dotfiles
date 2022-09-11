local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require("lspconfig").cssls.setup({
	capabilities = capabilities,
	cmd = { "/home/ersei/.local/share/nvim/mason/bin/vscode-css-language-server", "--stdio" }
})
