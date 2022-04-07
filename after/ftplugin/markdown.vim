set wrap                " Wrap long lines
set linebreak           " Break lines at word boundaries
set spell

" Indent really long lines (but they are not really indented)
set breakindent
set breakindentopt=shift:2

setlocal textwidth=0    " Prevent automatic line breaking in markdown files
set colorcolumn=0       " Don't highlight any column

function OpenInMarked2()
  !open % -a Marked\ 2.app 
endfunction

command! Marked execute "!open % -a Marked\\ 2"
nmap <silent> <leader>m :call OpenInMarked2() <CR> <CR>
command! Chrome execute "!open % -a Google\\ Chrome"

" plasticboy plugin configuration
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1  " Highlight YAML front matter of blog posts
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_folding_level = 2  " Don't fold top level
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_conceal = 0  " I generally don't like concealing things

if has('python3')
  :UltiSnipsAddFiletypes markdown.liquid.pandoc.html
endif
