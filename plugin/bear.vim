
nnoremap <silent> <Plug>CSFindS :<C-u>if bear#CSFindS()<Bar>execute ":cs find s <C-R>z"<Bar>endif<CR>
nmap <unique> <Leader><S-f> <Plug>CSFindS
