set wrap                " Wrap long lines
set linebreak           " Break lines at word boundaries
set spell

" Indent really long lines (but they are not really indented)
set breakindent
set breakindentopt=shift:3
setlocal shiftwidth=3

setlocal textwidth=0    " Prevent automatic line breaking in markdown files
set colorcolumn=0       " Don't highlight any column

let g:previm_open_cmd = 'open -a firefox'
