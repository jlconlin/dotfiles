set wrap
set linebreak
set spell
setlocal synmaxcol=0    " Highlight the entire line of text
setlocal textwidth=0    " Prevent automatic line breaking in TeX files
set colorcolumn=0       " Don't highlight any column


let g:vimtex_format_enabled = 1
let g:vimtex_fold_enabled = 1
let g:vimtex_fold_sections = [
    \ 'part',
    \ 'chapter',
    \ 'section', 'labday',
    \ 'subsection', 'experiment',
    \ 'subsubsection', 'subexperiment',
    \ 'subsubsection',
  \ ]

" Using Skim as a previewer
" let g:vimtex_view_general_viewer
"       \ = '/Applications/Skim.app/Contents/SharedSupport/displayline'
" let g:vimtex_view_general_options = '-r @line @pdf @tex'

" This adds a callback hook that updates Skim after compilation
" let g:vimtex_latexmk_callback_hooks = ['UpdateSkim']
" function! UpdateSkim(status)
"   if !a:status | return | endif

"   let l:out = b:vimtex.out()
"   let l:tex = expand('%:p')
"   let l:cmd = [g:vimtex_view_general_viewer, '-r']
"   if !empty(system('pgrep Skim'))
"     call extend(l:cmd, ['-g'])
"   endif
"   if has('nvim')
"     call jobstart(l:cmd + [line('.'), l:out, l:tex])
"   elseif has('job')
"     call job_start(l:cmd + [line('.'), l:out, l:tex])
"   else
"     call system(join(l:cmd + [line('.'), shellescape(l:out), shellescape(l:tex)], ' '))
"   endif
" endfunction

"setlocal formatoptions -= t

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
    \. 'subsubsection,subsubsubsection,subexperiment,paragraph'
" Folding environments
let g:Tex_FoldedEnvironments = 'frame,columns,column,block,minted,'

" Enable conceal mode
set cole=0
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

let g:Tex_PromptedEnvironments = 'split,subequations,equation,equation*,\[,$$,align,align*'

let g:Tex_Env_frame = "\\begin{frame}{<++>}\<CR><++>\<CR>\\end{frame}"
let g:Tex_Env_columns = "\\begin{columns}[c]\<CR>\\begin{column}{0.5\\textwidth}\<CR><++>\<CR>\\end{column}\<CR>\<CR>\\begin{column}{0.5\\textwidth}\<CR><++>\<CR>\\end{column}\<CR>\\end{columns}"
let g:Tex_Env_block = "\\begin{block}{<++>}\<CR><++>\<CR>\\end{block}"
let g:Tex_Env_minted = "\\begin{minted}[<++>]{<++>}\<CR><++>\<CR>\\end{minted}"

" Options for FastFold
let g:tex_fold_enabled = 1  " Update tex folds when saving file

" Turn off indication of indents
let g:indentLine_enabled = 0

" Commands to help with converting united numbers to use siunitx
nmap <C-i> c2aW<C-R>=substitute(@", '\v(\S+)\s+(\S+)', '\\SI{\1}{\2}', '')<CR><ESC>2hvF{l
vmap <C-i> c<C-R>=substitute(@", '\v(\S+)\s+(\S+)', '\\SI{\1}{\2}', '')<CR><ESC>hvF{l
