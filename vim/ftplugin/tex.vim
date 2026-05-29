set wrap
set linebreak
set spell
setlocal synmaxcol=0    " Highlight the entire line of text
setlocal textwidth=0    " Prevent automatic line breaking in TeX files
setlocal shiftwidth=2
set colorcolumn=0       " Don't highlight any column

let g:vimtex_format_enabled = 1
let g:vimtex_fold_types = {
\    'sections' : {
\     'sections' : [
\       'labday',
\       'experiment',
\       'subexperiment'
\     ]
\   }
\ }

set makeprg="latexmk -pdf -pv"

" If disabled (set to 0) LaTeX-Suite doesn't go immediately to warnings or
" errors after compilation
let g:Tex_GotoError = 0

" Enable conceal mode
set cole=0

" Indent really long lines (but they are not really indented)
set breakindent
set breakindentopt=shift:2

" Options for FastFold
let g:tex_fold_enabled = 1  " Update tex folds when saving file

" Turn off indication of indents
let g:indentLine_enabled = 0

" Don't enable AutoSave on Vim startup
let g:auto_save = 0  
