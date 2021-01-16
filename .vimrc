language en_US
" ------------- 插件管理开始 -------------
" 插件安装开始----------------------------
call plug#begin('~/.vim/plugged')

" 主题
"Plug 'liuchengxu/space-vim-theme'
Plug 'crusoexia/vim-monokai'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'jdkanani/vim-material-theme'
Plug 'lycuid/vim-far'


" Bookmarks
Plug 'MattesGroeger/vim-bookmarks'

" Undo Tree
Plug 'mbbill/undotree'

" IndentLine
Plug 'Yggdroot/indentLine'

" File navigation
if has('nvim')
		Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
		Plug 'Shougo/defx.nvim'
		Plug 'roxma/nvim-yarp'
		Plug 'roxma/vim-hug-neovim-rpc'
endif

" Air-line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Commenter
Plug 'scrooloose/nerdcommenter'

" Move
Plug 'easymotion/vim-easymotion'

" Asyncrun
Plug 'skywind3000/asyncrun.vim'
call plug#end()
" 插件安装结束----------------------------
" 插件配置开始----------------------------
" Theme
set background=dark
colorscheme darcula

" Filenavigation
source ~/.vim/defx_sy.vim
noremap <silent> tt :Defx<CR>

" Bookmark
let g:bookmark_sign = '>>'
let g:bookmark_annotation_sign = '##'
let g:bookmark_center = 1
let g:bookmark_highlight_lines = 1
highlight link BookmarkLine SpellBad
highlight link BookmarkAnnotationLine SpellBad

" Undotree
noremap <silent> X :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1

" Indentline
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

" Airline
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#buffer_nr_show = 1
nmap <tab> :bn<cr>

" Commenter
let g:NERFSpaceDelims = 1

" AsyncRun
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
nmap <silent> cn :cn<cr>        " next error
nmap <silent> cp :cp<cr>        " previous error
nmap <silent> cx :cclose<cr>    " closse quicfix window
nmap <silent> cl :cl<cr>        " list all errors
nmap <silent> cc :cc<cr>        " show detailed error information
nmap <silent> cw :cw<cr>        " open error window if has errors
nmap <silent> co :copen<cr>     " open quickfix window

" Easymotion
nmap s <Plug>(easymotion-s2)

" 插件配置结束----------------------------
" ------------- 插件管理结束 -------------

" ------------- 全局设置开始 -------------
" Using system clipboard
set clipboard=unnamed

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
        call append(1, "# -*- coding:UTF-8 -*-")
		normal G
		normal 3o
endf
autocmd bufnewfile *.py call HeaderPython()
