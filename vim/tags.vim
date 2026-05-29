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
nmap <C-m> :TagbarToggle<CR>

" Move to Tagbar window when it is opened
let g:tagbar_autofocus = 1

" Update the ctags whenever a file is saved
let g:easytags_events = ['BufWritePost']

" Use global line number configuration in Tagbar
let g:tagbar_show_linenumbers = -1

" Update easy tags asynchronously
" This doesn't freeze the window while the tags are updated
let g:easytags_async=1

let g:tagbar_type_ENDF = {
  \ 'ctagstype': 'ENDF',
  \ 'kinds'    : [
      \ 't:mt',
      \ 'f:mf',
      \ 'm:mat'
  \ ]
\}

let g:tagbar_type_AbaqusINP = {
    \ 'ctagstype' : 'AbaqusINP',
    \ 'kinds' : [
        \ 's:Section',
        \ 'k:Keyword'
    \ ],
    \ 'sort' : 0
\ }
