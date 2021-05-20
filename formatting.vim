" use tabs on makefiles because they require that
autocmd FileType make setlocal noexpandtab

" use 4 character wide tabs even though it looks more like 8
set sw=4 ts=4 sts=4
set expandtab
set tabstop=4

" spell checking :heart:
autocmd BufRead *.gr.*tex setlocal spell spelllang=el
