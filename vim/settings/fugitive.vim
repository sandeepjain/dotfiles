" fugitive.git
" ========================================
" For fugitive.git, dp means :diffput. Define dg to mean :diffget
nnoremap <silent> ,dg :diffget<CR>
nnoremap <silent> ,dp :diffput<CR>

nnoremap <silent> ,gc :Gcommit<CR>
nnoremap <silent> ,gd :Gdiff<CR>
nnoremap <silent> ,gb :Gblame<CR>
nnoremap <silent> ,gs :Gstatus<CR>
nnoremap <silent> ,gps :Gpush<CR>
