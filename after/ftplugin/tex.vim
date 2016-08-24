set wrap
set linebreak
set spell
setlocal textwidth=0    " Prevent automatic line breaking in TeX files
set colorcolumn=0       " Don't highlight any column

"setlocal formatoptions -= t

let Tex_ViewRule_pdf = '/Applications/Preview.app $*.pdf'
set makeprg="latexmk -pdf -pv"

" If disabled (set to 0) LaTeX-Suite doesn't go immediately to warnings or
" errors after compilation
let g:Tex_GotoError = 0

" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:

" Allow using option key on mac
set macmeta

" Folding sections
let g:Tex_FoldedSections = 'part,chapter,section,labday,subsection,experiment,'
    \. 'subsubsection,subexperiment,paragraph'
" Folding environments
let g:Tex_FoldedEnvironments = 'frame,columns,column,block,'

" Enable conceal mode
set cole=2
hi Conceal guibg=white guifg=black 

" Indent really long lines (but they are not really indented)
set breakindent
set breakindentopt=shift:2

" Maps for quickly inserting integrals
call IMAP (g:Tex_Leader.'I', "\\int_{<++>}^{<++>} <++> d<++>", 'tex')
call IMAP (g:Tex_Leader.'i', "\\int <++> d<++>", 'tex')
call IMAP ('_', '_{<++>}<++>', 'tex')
call IMAP ('^', '^{<++>}<++>', 'tex')
call IMAP ('\iso', '\isotope[<++>]{<++>}<++>', 'tex')
call IMAP ('\SI', '\SI{<++>}{\<++>}<++>', 'tex')
call IMAP ('\si', '\si{\<++>}<++>', 'tex')
call IMAP ('\num', '\num{<++>}<++>', 'tex')

set makeprg="latexmk -pdf -pv"

let g:Tex_PromptedEnvironments = 'split,subequations,equation,equation*,\[,$$,align,align*'

let g:Tex_Env_frame = "\\begin{frame}{<++>}\<CR><++>\<CR>\\end{frame}"

let g:Tex_Env_columns = "\\begin{columns}[c]\<CR>\\begin{column}{0.5\\textwidth}\<CR><++>\<CR>\\end{column}\<CR>\<CR>\\begin{column}{0.5\\textwidth}\<CR><++>\<CR>\\end{column}\<CR>\\end{columns}"

let g:Tex_Env_block = "\\begin{block}{<++>}\<CR><++>\<CR>\\end{block}"

" Options for FastFold
let g:tex_fold_enabled = 1  " Update tex folds when saving file
