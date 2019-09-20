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

" Maps for quickly inserting integrals
" call IMAP (g:Tex_Leader.'I', "\\int_{<++>}^{<++>} <++> d<++>", 'tex')
" call IMAP (g:Tex_Leader.'i', "\\int <++> d<++>", 'tex')
" call IMAP ('_', '_{<++>}<++>', 'tex')
" call IMAP ('^', '^{<++>}<++>', 'tex')

" call IMAP ('\iso', '\isotope[<++>]{<++>}<++>', 'tex')
" call IMAP ('\SI', '\SI{<++>}{\<++>}<++>', 'tex')
" call IMAP ('\si', '\si{\<++>}<++>', 'tex')
" call IMAP ('\num', '\num{<++>}<++>', 'tex')

" Options for FastFold
let g:tex_fold_enabled = 1  " Update tex folds when saving file

" Turn off indication of indents
let g:indentLine_enabled = 0

" Commands to help with converting unit-ed numbers to use siunitx
" nmap <C-i> c2aW<C-R>=substitute(@", '\v(\S+)\s+(\S+)', '\\SI{\1}{\2}', '')<CR><ESC>2hvF{l
" vmap <C-i> c<C-R>=substitute(@", '\v(\S+)\s+(\S+)', '\\SI{\1}{\2}', '')<CR><ESC>hvF{l
