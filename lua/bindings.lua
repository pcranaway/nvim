-- NOTE: These are just Vim-related bindings
-- any bindings that depend on plugins are defined on their config functions

vim.g.mapleader = ' '

-- feels so much better
vim.api.nvim_set_keymap('n', ';', ':', { noremap = true, silent = false })

-- easier indentation with >, <
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = false })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = false })

-- put search results on the same line as cursor
vim.api.nvim_set_keymap('n', 'n', 'nzzzv', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', 'N', 'Nzzzv', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', 'J', 'mzJ`z', { noremap = true, silent = false })
