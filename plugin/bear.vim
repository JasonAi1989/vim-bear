
nnoremap <silent> <Plug>CSFindS :<C-u>if bear#CSFindS()<Bar>execute ":cs find s @z"<Bar>endif<CR>
nmap <unique> <Leader>s <Plug>CSFindS
