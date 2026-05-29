let g:UltiSnipsUsePythonVersion = 3

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:UltiSnipsListSnippets = "<c-h>"
                
let g:UltiSnipsSnippetsDirectories=[ "UltiSnips", "~/.vim/ultisnips"]
let g:UltiSnipsEditSplit = "vertical"

"Open UltiSnips edit function
nmap <leader>se :UltiSnipsEdit<cr>

let g:UltiSnipsNoPythonWarning = 1
