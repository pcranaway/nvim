call plug#begin('~/.vim/plugged')
" very cool tree
Plug 'preservim/nerdtree'

" very cool color scheme
Plug 'morhetz/gruvbox'

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

" zen mode lmaooo https://www.youtube.com/watch?v=z0-bHDEmZko
Plug 'junegunn/goyo.vim'

" tabular!? ?!!
Plug 'godlygeek/tabular'

Plug 'beeender/Comrade'

" gleam
Plug 'gleam-lang/gleam.vim'

call plug#end()

