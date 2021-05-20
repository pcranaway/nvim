call plug#begin('~/.vim/plugged')
" very cool tree
Plug 'scrooloose/nerdtree'

" very cool color scheme
Plug 'romainl/Apprentice'

" :fire: lsp configs
Plug 'neovim/nvim-lspconfig'

" dope lsp completion
Plug 'nvim-lua/completion-nvim'

" clang-format support (must be installed on system)
Plug 'rhysd/vim-clang-format'

" TeX support
Plug 'lervag/vimtex'

" searching through the project
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
call plug#end()

