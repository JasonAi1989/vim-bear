
function test#Hello()
    echo "aa"
endfunction
function! test#MarkRegex( groupNum, regexpPreset )
	call inputsave()
		echohl Question
			let l:regexp = input('Input pattern to mark: ', a:regexpPreset)
		echohl None
	call inputrestore()
	let v:errmsg = ''
	if empty(l:regexp)
		return 0
	endif

	redraw " This is necessary when the user is queried for the mark group.
endfunction


nnoremap <silent> <Plug>MarkRegex1             :<C-u>if !test#MarkRegex(v:count, '')<Bar>execute "normal! \<lt>C-\>\<lt>C-n>\<lt>Esc>"<Bar>if ! empty(v:errmsg)<Bar>echoerr v:errmsg<Bar>endif<Bar>endif<CR>
nmap <unique> <Leader>t <Plug>MarkRegex1
