" ------------------------------------------------------------PLUGINS INSTALL

call plug#begin('~/.vim/plugged')

" BOOKMARKS
Plug 'MattesGroeger/vim-bookmarks'

" UNDOTREE
Plug 'mbbill/undotree'

" INDENTLINE
Plug 'Yggdroot/indentLine'

" NERDTREE
Plug 'scrooloose/nerdtree'

" AIRLINE
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" COMMENTER
Plug 'scrooloose/nerdcommenter'

" EASYMOTION
Plug 'easymotion/vim-easymotion'

" ASYNCRUN
Plug 'skywind3000/asyncrun.vim'

" TAGBAR
Plug 'majutsushi/tagbar'

" SURROUND
" Using <CR> to mark
Plug 'tpope/vim-surround'

" WILDFIRE
" Using S<Any> to append
" Using cs<Former><Latter> to change
Plug 'gcmt/wildfire.vim'

" COC.NVIM
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

" CPP-HIGHLIGHT
Plug 'octol/vim-cpp-enhanced-highlight'

" DASHBOARD
Plug 'glepnir/dashboard-nvim'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" ------------------------------------------------------------PLUGINS CONFIG

" THEME
set background=dark
colorscheme darcula

" BOOKMARK
" use mm to append a bookmark
" use mi to append a annotation
" use ma to search bookmarks
" use mx to clean all bookmarks
" use mn to turn to next bookmark
" use mp to turn to previous bookmark
let g:bookmark_sign = '⚑'
let g:bookmark_annotation_sign = '☰'
let g:bookmark_center = 1

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
nnoremap tt :NERDTreeToggle<CR>

" AIRLINE
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
nnoremap <tab> :bn<cr>

" COMMENTER
" use <leader>cc to comment code
" use <leader>cu to uncomment code
let g:NERFSpaceDelims = 1

" EASYMOTION
" use ss to search code
nmap ss <Plug>(easymotion-s2)

" ASYNCRUN
" use <Shift>R to quickrun
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
nnoremap <silent> cn :cn<cr>        " next error
nnoremap <silent> cp :cp<cr>        " previous error
nnoremap <silent> cx :cclose<cr>    " closse quicfix window
nnoremap <silent> cc :cc<cr>        " show detailed error information
nnoremap <silent> cw :cw<cr>        " open error window if has errors
nnoremap <silent> co :copen<cr>      open quickfix window
let g:airline#extensions#tabline#buffer_nr_show = 1

" TAGBAR
" use tb to open tagbar
nnoremap tb :TagbarToggle<CR>

" COC.NVIM
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" DASHBOARD
let g:dashboard_default_executive ='fzf'
let g:dashboard_custom_header=[
        \' ██████╗ ████████╗ ███████╗ ██╗   ██╗ ███████╗ ██╗   ██╗',
        \'██╔════╝    ██╔══╝ ██╔════╝ ██║   ██║ ██╔════╝ ███╗  ██║', 
        \'╚██████╗    ██║    █████╗   ██║   ██║ █████╗   █╔██╗ ██║', 
        \'  ╚═══██╗   ██║    ██╔══╝   ╚██╗ ██╔╝ ██╔══╝   █║╚██╗██║', 
        \' ██████╔╝   ██║    ███████╗  ╚████╔╝  ███████╗ █║ ╚████║', 
        \' ╚═════╝    ╚═╝    ╚══════╝   ╚═══╝   ╚══════╝ ╚╝  ╚═══╝',
        \]
let g:dashboard_custom_footer=[
        \'              steven@StevenChaoo',
        \'',
        \'OS: macOS 11.2 20D64 x86_64',
        \'Host: MacBookPro15,1',
        \'Resolution: 1680x1050',
        \'WM: Quartz Compositor',
        \"Terminal: Apple_Terminal",
        \"CPU: Intel i7-8750H (12) @ 2.20GHz",
        \"GPU: Intel UHD Graphics 630, Radeon Pro 555X",
        \"",
        \]
let g:dashboard_custom_section={
  \ 'buffer_list': {
      \ 'description': ['FIND FILES'],
      \ 'command': 'Files'}
  \ }

" ------------------------------------------------------------SET LANGUAGE

language en_US

" ------------------------------------------------------------SET MENU

set wildmenu

" ------------------------------------------------------------USING SYSTEM CLIPBOARD

set clipboard=unnamed

" ------------------------------------------------------------AUTO WRAP

set textwidth=80
set formatoptions+=mM
set cc=81

" ------------------------------------------------------------MAP KEYS

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
noremap <LEADER>x :nohlsearch<CR>

" ------------------------------------------------------------AUTO INDENT

filetype indent on

" ------------------------------------------------------------SET SYNTAX

syntax on

" ------------------------------------------------------------SHOW LINE NUMBER

set number
set relativenumber
set scrolloff=5
set cursorline 

" ------------------------------------------------------------SET TAB

set tabstop=4
set expandtab

" ------------------------------------------------------------OPEN MOUSE

set mouse=a

" ------------------------------------------------------------AUTO INDENT

set autoindent
set smartindent

" ------------------------------------------------------------HIGHLIGHT SEARCH
"
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

" ------------------------------------------------------------AUTO RUN 

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

" ------------------------------------------------------------AUTO HEAD

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





















