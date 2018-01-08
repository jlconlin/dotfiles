set wrap                " Wrap long lines
set linebreak           " Break lines at word boundaries
set spell

" Indent really long lines (but they are not really indented)
set breakindent
set breakindentopt=shift:2

setlocal textwidth=0    " Prevent automatic line breaking in markdown files
set colorcolumn=0       " Don't highlight any column

command! Marked execute "!open % -a Marked\\ 2"

set conceallevel=0
