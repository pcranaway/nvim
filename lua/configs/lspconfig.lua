return function()

	local lspconfig = require('lspconfig')

	lspconfig.sumneko_lua.setup {}
	lspconfig.rust_analyzer.setup {}

end
