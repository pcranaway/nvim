" use 4 character wide tabs even though it looks more like 8
set sw=4 ts=4 sts=4
set expandtab
set tabstop=4

" fuck the police coming straight from the underground kinda shit
autocmd FileType make setlocal noexpandtab
autocmd FileType asm setlocal noexpandtab sw=8 ts=8 sts=8

" spell checking :heart:
autocmd BufRead *.gr.*tex setlocal spell spelllang=el
