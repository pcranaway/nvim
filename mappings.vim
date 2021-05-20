" map leader key to space
let mapleader = " "

" map : to ;, makes it so much better
noremap ; :

" easier indentation with <, >
vnoremap < <gv
vnoremap > >gv

" i honestly don't remember what this does
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l

" iirc this formats very long lines into multiple, smaller ones (godlike
" feature) 
nnoremap Q gq

" THIS IS BROKEN AS FUCK!
" nnoremap <C-M> :LeaderfFile<CR>
