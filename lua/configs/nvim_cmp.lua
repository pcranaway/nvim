return function()
	local cmp = require('cmp')
	local luasnip = require('luasnip')

	cmp.setup({

		preselect = cmp.PreselectMode.None,
		snippet = {
			expand = function(args) luasnip.lsp_expand(args.body) end,
		},
		confirm_opts = {
			behavior = cmp.ConfirmBehavior.Replace,
			select = false,
		},
		window = {
			documentation = {
				border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
			},
		},

		sources = {
			{ name = 'nvim_lsp' },
			{ name = 'vsnip' },
			{ name = 'buffer' },
		},

		mapping = {
			["<Up>"] = cmp.mapping.select_prev_item(),
			["<Down>"] = cmp.mapping.select_next_item(),
			["<C-p>"] = cmp.mapping.select_prev_item(),
			["<C-n>"] = cmp.mapping.select_next_item(),
			["<C-k>"] = cmp.mapping.select_prev_item(),
			["<C-j>"] = cmp.mapping.select_next_item(),
			["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
			["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
			["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
			["<C-y>"] = cmp.config.disable,
			["<C-e>"] = cmp.mapping {
				i = cmp.mapping.abort(),
				c = cmp.mapping.close(),
			},
			["<CR>"] = cmp.mapping.confirm { select = false },
			["<Tab>"] = cmp.mapping(function(fallback)
				if cmp.visible() then
					cmp.select_next_item()
				elseif luasnip.expandable() then
					luasnip.expand()
				elseif luasnip.expand_or_jumpable() then
					luasnip.expand_or_jump()
				elseif has_words_before() then
					cmp.complete()
				else
					fallback()
				end
			end, {
			"i",
			"s",
		}),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, {
		"i",
		"s",
	}),
}


	})



	-- cmp.setup({
	-- 	snippet = {
	-- 		expand = function(args)
	-- 			vim.fn["vsnip#anonymous"](args.body)
	-- 		end,
	-- 	},
	-- 	mapping = {
	-- 		['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
	-- 		['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),

	-- 		['<C-e>'] = cmp.mapping.close(),

	-- 		['<CR>'] = cmp.mapping.confirm({
	-- 			behavior = cmp.ConfirmBehavior.Replace,
	-- 			select = true,
	-- 		}),

	-- 		['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
	-- 		['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
	-- 	},
	-- 	sources = {
	-- 		{ name = 'nvim_lsp' },
	-- 		{ name = 'vsnip' },
	-- 		{ name = 'buffer' },
	-- 	},
	-- 	{
	-- 		{ name = "buffer" }
	-- 	}
	-- })

end
