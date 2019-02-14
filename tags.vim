" Where ViM should search for ctags
if !isdirectory($HOME.'/.vim/ctags') && exists('*mkdir')
  call mkdir($HOME.'/.vim/ctags')
endif
set tags=~/.vim/ctags

" Use CTRL-\ to open a (ctag) definition in a new tab
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" Use Alt-] to open a (ctag) definition in a vertical split
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Toggle tagbar
" nmap <C-m> :TagbarToggle<CR>

" Update the ctags whenever a file is saved
let g:easytags_events = ['BufWritePost']

" Update easy tags asynchronously
" This doesn't freeze the window while the tags are updated
let g:easytags_async=1
