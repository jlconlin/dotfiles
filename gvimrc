set guioptions+=b   " Add bottom scrollbar
set columns=200
set lines=75
set bg=light

" Settings unique to Mac
if has( "gui_running" )
  if has("gui_macvim")
    set guifont=Hack\ Nerd\ Font:h12
  endif
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
