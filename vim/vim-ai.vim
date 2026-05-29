" Set your OpenAI key (or export in shell)
let $OPENAI_API_KEY = $OPENAI_API_KEY

" Basic settings:
let g:vim_ai_model = 'gpt-5.1'
" let g:vim_ai_default_role = 'assistant'
" let g:vim_ai_max_tokens = 1500
let g:vim_ai_temperature = 0.6

" stop async chat generation
nnoremap <leader>s :AIStopChat<CR>

" complete text on the current line or in visual selection
nnoremap <leader>a :AI<CR>
xnoremap <leader>a :AI<CR>

" edit text with a custom prompt
xnoremap <leader>s :AIEdit fix grammar and spelling<CR>
nnoremap <leader>s :AIEdit fix grammar and spelling<CR>

" trigger chat
xnoremap <leader>c :AIChat<CR>
nnoremap <leader>c :AIChat<CR>

" redo last AI command
nnoremap <leader>r :AIRedo<CR>
