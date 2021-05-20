" toggle tree mapped to ctrl+n
nnoremap <C-n> :NERDTreeToggle<CR>

" pretty sure this makes sure that it closes if its the only tab 
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
