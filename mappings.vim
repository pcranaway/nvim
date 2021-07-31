" map leader key to space
let mapleader = " "

" map : to ;, makes it so much better
noremap ; :

" easier indentation with <, >
vnoremap < <gv
vnoremap > >gv

" pane stuff
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l

nnoremap <C-r><C-h> :vertical resize -4<CR>
nnoremap <C-r><C-l> :vertical resize +4<CR>
nnoremap <C-r><C-k> :resize +4<CR>
nnoremap <C-r><C-j> :resize -4<CR>

" iirc this formats very long lines into multiple, smaller ones (godlike
" feature) 
nnoremap Q gq

" copy the rest of the line after current character
nnoremap Y y$

" put find results on the same line as the cursor (same with J)
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" THIS IS BROKEN AS FUCK!
" nnoremap <C-M> :LeaderfFile<CR>
