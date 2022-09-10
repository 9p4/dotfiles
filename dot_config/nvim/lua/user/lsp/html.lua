local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require("lspconfig").html.setup({
	capabilities = capabilities,
	cmd = { "/home/ersei/.local/share/nvim/mason/bin/vscode-html-language-server", "--stdio" }
})
