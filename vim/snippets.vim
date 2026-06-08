let g:UltiSnipsUsePythonVersion = 3

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:UltiSnipsListSnippets = "<c-h>"

let g:UltiSnipsSnippetsDirectories=[ "UltiSnips", "$MYVIMDIR/ultisnips"]
let g:UltiSnipsEditSplit = "vertical"

"Open UltiSnips edit function
nmap <leader>se :UltiSnipsEdit<cr>

let g:UltiSnipsNoPythonWarning = 1

" Find project root by looking for .git directory
function! FindProjectRoot()
  let l:root = finddir('.git/..', expand('%:p:h').';')
  return l:root
endfunction

" Add project-specific UltiSnips directory if it exists
augroup ProjectSnippets
  autocmd!
  autocmd BufEnter * call AddProjectSnippets()
augroup END

function! AddProjectSnippets()
  let l:root = FindProjectRoot()
  if !empty(l:root)
    let l:snippet_dir = l:root . '/.vim/UltiSnips'
    if isdirectory(l:snippet_dir) && index(g:UltiSnipsSnippetDirectories, l:snippet_dir) == -1
      call add(g:UltiSnipsSnippetDirectories, l:snippet_dir)
    endif
  endif
endfunction
