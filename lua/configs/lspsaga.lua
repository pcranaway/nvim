return function()
	local saga = require("lspsaga")

	saga.init_lsp_saga()

	-- bindings
	vim.keymap.set("n", "<S-k>", "<cmd>Lspsaga hover_doc<CR>", { silent = true })


end

