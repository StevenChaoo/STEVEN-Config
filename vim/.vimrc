" ------------- 插件管理开始 -------------
" 插件安装开始----------------------------

call plug#begin('~/.vim/plugged')
" Bookmarks
Plug 'MattesGroeger/vim-bookmarks'

" Undo Tree
Plug 'mbbill/undotree'

" IndentLine
Plug 'Yggdroot/indentLine'

" NERDTree
Plug 'scrooloose/nerdtree'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Commenter
Plug 'scrooloose/nerdcommenter'

" Move
Plug 'easymotion/vim-easymotion'

" Asyncrun
Plug 'skywind3000/asyncrun.vim'

" Tagbar
Plug 'majutsushi/tagbar'

" Surround
" Using <CR> to mark
Plug 'tpope/vim-surround'

" WildFire
" Using S<Any> to append
" Using cs<Former><Latter> to change
Plug 'gcmt/wildfire.vim'

" Coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

" cpp-highlight
Plug 'octol/vim-cpp-enhanced-highlight'

call plug#end()

" 插件安装结束----------------------------
" 插件配置开始----------------------------

" THEME
set background=dark
colorscheme darcula

" BOOKMARK
" use mm to append a bookmark
let g:bookmark_sign = '>>'
let g:bookmark_annotation_sign = '##'
let g:bookmark_center = 1
let g:bookmark_highlight_lines = 1
highlight link BookmarkLine SpellBad
highlight link BookmarkAnnotationLine SpellBad

" UNDOTREE
" use X to open undotree
noremap <silent> X :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1

" INDENTLINE
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

" NERDTREE
" use tt to open nerdtree
nnoremap tt :NERDTreeMirror<CR>
nnoremap tt :NERDTreeToggle<CR>

" AIRLINE
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#buffer_nr_show = 1
nnoremap <tab> :bn<cr>

" COMMENTER
" use \cc to comment code
" use \cu to uncomment code
let g:NERFSpaceDelims = 1

" EASYMOTION
" use ss to search code
nmap ss <Plug>(easymotion-s2)

" ASYNCRN
" use <Shift>R to quickrun
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
nnoremap <silent> cn :cn<cr>        " next error
nnoremap <silent> cp :cp<cr>        " previous error
nnoremap <silent> cx :cclose<cr>    " closse quicfix window
nnoremap <silent> cl :cl<cr>        " list all errors
nnoremap <silent> cc :cc<cr>        " show detailed error information
nnoremap <silent> cw :cw<cr>        " open error window if has errors
nnoremap <silent> co :copen<cr>      open quickfix window

" TAGBAR
" use tb to open tagbar
nnoremap tb :TagbarToggle<CR>

" COC
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" 插件配置结束----------------------------
" ------------- 插件管理结束 -------------
" ------------- 全局设置开始 -------------
" SET LANGUAGE
language en_US

" SET MENU
set wildmenu

" USING SYSTEM CLIPBOARD
set clipboard=unnamed

" AUTO WRAP
set textwidth=80
set formatoptions+=mM
set cc=81

" MAP KEYS
let mapleader = ' '
map Q :q<CR>
map ; :
map <LEADER>l <C-w>l
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>h <C-w>h
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
map <up> :res+5<CR>
map <down> :res-5<CR>
noremap H 0
noremap L $
noremap J 5j
noremap K 5k
noremap s <nop>
noremap <LEADER>- :split<CR>
noremap <LEADER>= :vsplit<CR>

" AUTO INDENT
filetype indent on

" SET SYNTAX
syntax on

" SHOW LINE NUMBER
set number
set relativenumber
set scrolloff=5
set cursorline 

" SET TAB
set tabstop=4
set expandtab

" OPEN MOUSE
set mouse=a

" AUTO INDENT
set autoindent
set smartindent

" HIGHLIGHT SEARCH
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

" AUTO RUN 
noremap R :call CompileAndRun()<CR>
func! CompileAndRun()
        exec "w"
        if &filetype == 'python'
                exec "AsyncRun! -raw python %"
				exec "copen | wincmd p"
		elseif &filetype == 'cpp'
                set splitbelow
                exec "AsyncRun! g++ -std=c++11 % -Wall -o %< && ./%<"
                exec "copen | wincmd p"
		elseif &filetype == 'c'
				exec "AsyncRun! cc % -o %< && ./%< && rm -rf %<"
				exec "copen | wincmd p"
		elseif &filetype == 'java'
				exec "!javac %"
				exec "!time java %<"
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
