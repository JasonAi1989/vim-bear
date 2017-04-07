
function bear#Hello()
    echo "hello bear"
endfunction

function! bear#CSFindS()
	call inputsave()
		echohl Question
			let l:regexp = input('Input key to search: ')
		echohl None
	call inputrestore()

	if empty(l:regexp)
		return 0
	endif

    let @z=l:regexp
    return 1
endfunction
