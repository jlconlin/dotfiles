set wrap
set linebreak
set spell
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
  \ ]

" Using Skim as a previewer
let g:vimtex_view_general_viewer
      \ = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf @tex'

" This adds a callback hook that updates Skim after compilation
let g:vimtex_latexmk_callback_hooks = ['UpdateSkim']
function! UpdateSkim(status)
  if !a:status | return | endif

  let l:out = b:vimtex.out()
  let l:tex = expand('%:p')
  let l:cmd = [g:vimtex_view_general_viewer, '-r']
  if !empty(system('pgrep Skim'))
    call extend(l:cmd, ['-g'])
  endif
  if has('nvim')
    call jobstart(l:cmd + [line('.'), l:out, l:tex])
  elseif has('job')
    call job_start(l:cmd + [line('.'), l:out, l:tex])
  else
    call system(join(l:cmd + [line('.'), shellescape(l:out), shellescape(l:tex)], ' '))
  endif
endfunction

" Options for YouCompleteMe
if !exists('g:ycm_semantic_triggers')
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = [
      \ 're!\\[A-Za-z]*cite[A-Za-z]*(\[[^]]*\]){0,2}{[^}]*',
      \ 're!\\[A-Za-z]*ref({[^}]*|range{([^,{}]*(}{)?))',
      \ 're!\\hyperref\[[^]]*',
      \ 're!\\includegraphics\*?(\[[^]]*\]){0,2}{[^}]*',
      \ 're!\\(include(only)?|input){[^}]*',
      \ 're!\\\a*(gls|Gls|GLS)(pl)?\a*(\s*\[[^]]*\]){0,2}\s*\{[^}]*',
      \ 're!\\includepdf(\s*\[[^]]*\])?\s*\{[^}]*',
      \ 're!\\includestandalone(\s*\[[^]]*\])?\s*\{[^}]*',
      \ ]

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
