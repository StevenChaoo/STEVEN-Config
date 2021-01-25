language en_US
" ------------- 插件管理开始 -------------
" 插件安装开始----------------------------
call plug#begin('~/.vim/plugged')

" 主题

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

" Auto Formater
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Surround
Plug 'tpope/vim-surround'

" WildFire
Plug 'gcmt/wildfire.vim'

" Coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

call plug#end()
" 插件安装结束----------------------------
" 插件配置开始----------------------------
" Theme
set background=dark
colorscheme darcula

" Bookmark
" use mm to append a bookmark
let g:bookmark_sign = '>>'
let g:bookmark_annotation_sign = '##'
let g:bookmark_center = 1
let g:bookmark_highlight_lines = 1
highlight link BookmarkLine SpellBad
highlight link BookmarkAnnotationLine SpellBad

" Undotree
" use X to open undotree
noremap <silent> X :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1

" Indentline
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

" NERDTree
" use tt to open nerdtree
nmap tt :NERDTreeMirror<CR>
nmap tt :NERDTreeToggle<CR>

" Airline
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#buffer_nr_show = 1
nmap <tab> :bn<cr>

" Commenter
" use \cc to comment code
" use \cu to uncomment code
let g:NERFSpaceDelims = 1

" Easymotion
" use ss to search code
nmap ss <Plug>(easymotion-s2)

" AsyncRun
" use <Shift>R to quickrun
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
nmap <silent> cn :cn<cr>        " next error
nmap <silent> cp :cp<cr>        " previous error
nmap <silent> cx :cclose<cr>    " closse quicfix window
nmap <silent> cl :cl<cr>        " list all errors
nmap <silent> cc :cc<cr>        " show detailed error information
nmap <silent> cw :cw<cr>        " open error window if has errors
nmap <silent> co :copen<cr>     " open quickfix window

" Tagbar
" use tb to open tagbar
nmap tb :TagbarToggle<CR>

" Auto Formater
" use ff to format
nmap ff :Autoformat<CR>

" Pydiction
filetype plugin on
let g:pydiction_location = '~/.vim/tools/pydiction/complete-dict'

" 插件配置结束----------------------------
" ------------- 插件管理结束 -------------

" ------------- 全局设置开始 -------------
" Using system clipboard
set clipboard=unnamed

" 高亮当前行
set cursorline 

" 80字符自动换行
set textwidth=80
set formatoptions+=mM
set cc=81

" 键位映射
inoremap <M-CR> <Esc>
noremap H 0
noremap L $
noremap J 5j
noremap K 5k
noremap s <nop>

" 自动排版
filetype indent on

" 语法高亮
syntax on

" 显示行号
set number

" 设置tab键为4个字符
set tabstop=4
set expandtab

" 开启鼠标滚轮
set mouse=a

" 自动缩进
set autoindent
set smartindent

" 自动编译
map R :call CompileAndRun()<CR>
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

" auto head
function HeaderPython()
		call setline(1, "# Author:STEVEN")
        call append(line("."), "# -*- coding:UTF-8 -*-")
        normal G
        normal o
endf
autocmd bufnewfile *.py call HeaderPython()
