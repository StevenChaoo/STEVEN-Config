" AUTO RUN 
noremap <F5> :call CompileAndRun()<CR>
func! CompileAndRun()
        exec "w"
        if &filetype == 'python'
                exec "AsyncRun! -raw python %"
				exec "copen | wincmd p"
		elseif &filetype == 'cpp'
                exec "AsyncRun! g++ -std=c++11 % -Wall -o %< && ./%<"
                exec "copen | wincmd p"
		elseif &filetype == 'c'
				exec "AsyncRun! cc % -o %< && ./%< && rm -rf %<"
				exec "copen | wincmd p"
        elseif &filetype == 'markdown'
                exec "MarkdownPreview"
        elseif &filetype == 'go'
                set splitbelow
                :sp
                :term go run %
        endif
endfunc

" AUTO HEAD
function HeaderPython()
		call setline(1, "# Author:STEVEN")
        call append(line("."), "# -*- coding:UTF-8 -*-")
        normal G
        normal 3o
endf
autocmd bufnewfile *.py call HeaderPython()
function HeaderCpp()
        call setline(1, "// Author:STEVEN")
        call append(line("."),"//")
        call append(line(".")*2, "#include<iostream>")
        call append(line(".")*3, "using namespace std;")
        normal G
        normal 2o
endf
autocmd bufnewfile *.cpp call HeaderCpp()
function HeaderGo()
        call setline(1, "// Author:STEVEN")
        normal G
        normal 2o
endf
autocmd bufnewfile *.go call HeaderGo()
