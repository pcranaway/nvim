return function()
	require("mason-lspconfig").setup({
		ensure_installed = {"sumneko_lua", "rust_analyzer"}
	})
end
