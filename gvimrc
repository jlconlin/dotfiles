set guioptions+=b   " Add bottom scrollbar
set columns=100
set lines=75
set cursorline          " Highlight current line

" Settings unique to Mac
if has("macunix")
  set guifont=Menlo\ Regular:120    " Set font to Menlo 12 pt size.  
endif

set t_vb=       " Use visual bell instead of beeping

" tab mappings 
map <D-M-Right> :tabn<CR>
imap <D-M-Right> <C-o>:tabn<CR>
map <D-M-Left> :tabp<CR>
imap <D-M-Left> <C-o>:tabp<CR>
map <D-1> 1gt 
map <D-2> 2gt 
map <D-3> 3gt 
map <D-4> 4gt 
map <D-5> 5gt 
map <D-6> 6gt 
map <D-7> 7gt 
map <D-8> 8gt 
map <D-9> 9gt 
map <D-t> :tabnew<CR> 
map <D-w> :tabclose<CR> 
