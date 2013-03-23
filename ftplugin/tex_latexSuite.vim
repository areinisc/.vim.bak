" LaTeX filetype
"	  Language: LaTeX (ft=tex)
"	Maintainer: Srinath Avadhanula
"		 Email: srinath@fastmail.fm

if !exists('s:initLatexSuite')
	let s:initLatexSuite = 1
	exec 'so '.fnameescape(expand('<sfile>:p:h').'/latex-suite/main.vim')

	silent! do LatexSuite User LatexSuiteInitPost
endif

silent! do LatexSuite User LatexSuiteFileType

" this was added to insert \item 
function CR()
    if searchpair('\\begin{itemize}', '', '\\end{itemize}', '')
        return "\r\\item"
    endif
    return "\r"
endfunction
inoremap <expr><buffer> <CR> CR()

function CR()
    if searchpair('\\begin{enumerate}', '', '\\end{enumerate}', '')
        return "\r\\item"
    endif
    return "\r"
endfunction
inoremap <expr><buffer> <CR> CR()
