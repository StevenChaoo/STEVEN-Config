
let mapleader = ' '

" ------------------------------------------------------------PLUGINS INSTALL

call plug#begin('~/.config/nvim/plugged')

" BOOKMARKS
" use mm to append a bookmark
" use mi to append a annotation
" use ma to search bookmarks
" use mx to clean all bookmarks
" use mn to turn to next bookmark
" use mp to turn to previous bookmark
Plug 'MattesGroeger/vim-bookmarks'

" UNDOTREE
" use X to open undotree
Plug 'mbbill/undotree'

" INDENTLINE
Plug 'Yggdroot/indentLine'

" NERDTREE
" use tt to open nerdtree
Plug 'scrooloose/nerdtree'

" AIRLINE
" use <tab> to swtich tabs
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" COMMENTER
" use <leader>cc to comment code
" use <leader>cu to uncomment code
Plug 'scrooloose/nerdcommenter'

" EASYMOTION
" use ss to search code
Plug 'easymotion/vim-easymotion'

" ASYNCRUN
" use <F5> to quickrun
" use cn jump to next error
" use cp jump to previous error
" use cx to close quickfix
" use cc to show details of error
" use co to open quickfix
Plug 'skywind3000/asyncrun.vim'

" TAGBAR
" use tb to open tagbar
Plug 'majutsushi/tagbar'

" SURROUND
" use <CR> to mark
Plug 'tpope/vim-surround'

" WILDFIRE
" use S<Any> to append
" use cs<Former><Latter> to change
Plug 'gcmt/wildfire.vim'

" COC.NVIM
" use <C-o> to open coc in insert mode
" use ep jump to previous error
" use en jump to next error
" use gd jump to definition
" use gr jump to references
" use <LEADER>rn to rename selected variables
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" CPP-HIGHLIGHT
Plug 'octol/vim-cpp-enhanced-highlight'

" DASHBOARD
Plug 'glepnir/dashboard-nvim'

" FZF
" use <LEADER>H to open MRU files
" use <LEADER>F to open files in ~/File/Code/
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'

" SNIPPETS
Plug 'honza/vim-snippets'

" MARKDOWN
" use :MarkdownPreview to preview md file
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" TABULAR
" use :Tabularize<Any> to tabularize
Plug 'godlygeek/tabular'

" TABLE-MODE
" use <LEADER>tm to enter table mode
Plug 'dhruvasagar/vim-table-mode'

call plug#end()

" ------------------------------------------------------------PLUGINS CONFIG

" BOOKMARK
let g:bookmark_sign            = '⚑'
let g:bookmark_annotation_sign = '☰'
let g:bookmark_center          = 1

" UNDOTREE
noremap <silent> X :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen       = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators    = 1
let g:undotree_WindowLayout       = 2
let g:undotree_DiffpanelHeight    = 8
let g:undotree_SplitWidth         = 24

" INDENTLINE
let g:indent_guides_guide_size  = 1
let g:indent_guides_start_level = 2

" NERDTREE
nnoremap tt :NERDTreeToggle<CR>

" AIRLINE
nnoremap <tab> :bn<cr>
let g:airline_powerline_fonts            = 0
let g:airline#extensions#tabline#enabled = 1

" COMMENTER
let g:NERFSpaceDelims = 1

" EASYMOTION
nmap ss <Plug>(easymotion-s2)

" ASYNCRUN
nnoremap <silent> cn :cn<cr>        " next error
nnoremap <silent> cp :cp<cr>        " previous error
nnoremap <silent> cx :cclose<cr>    " closse quicfix window
nnoremap <silent> cc :cc<cr>        " show detailed error information
nnoremap <silent> cw :cw<cr>        " open error window if has errors
nnoremap <silent> co :copen<cr>      open quickfix window
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
let g:airline#extensions#tabline#buffer_nr_show = 1

" TAGBAR
nnoremap tb :TagbarToggle<CR>

" COC.NVIM
let g:coc_global_extensions = [
                        \ 'coc-json',
                        \ 'coc-python',
                        \ 'coc-snippets',
                        \ 'coc-pairs',
                        \ 'coc-highlight',
                        \ 'coc-vimlsp']
set hidden
set updatetime=100
set shortmess+=c
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <C-o> coc#refresh()
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nnoremap <silent> ep <Plug>(coc-diagnostic-prev)
nnoremap <silent> en <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <LEADER>rn <Plug>(coc-rename)

" DASHBOARD
let g:dashboard_custom_header=[
        \' ██████╗ ████████╗ ███████╗ ██╗   ██╗ ███████╗ ██╗   ██╗',
        \'██╔════╝    ██╔══╝ ██╔════╝ ██║   ██║ ██╔════╝ ███╗  ██║', 
        \'╚██████╗    ██║    █████╗   ██║   ██║ █████╗   █╔██╗ ██║', 
        \'  ╚═══██╗   ██║    ██╔══╝   ╚██╗ ██╔╝ ██╔══╝   █║╚██╗██║', 
        \' ██████╔╝   ██║    ███████╗  ╚████╔╝  ███████╗ █║ ╚████║', 
        \' ╚═════╝    ╚═╝    ╚══════╝   ╚═══╝   ╚══════╝ ╚╝  ╚═══╝',
        \]
let g:dashboard_custom_footer=[
        \'                 steven@StevenChaoo',
        \'',
        \'OS         : macOS 11.2 20D64 x86_64',
        \'Host       : MacBookPro15,1',
        \'Resolution : 1680x1050',
        \'WM         : Quartz Compositor',
        \"Terminal   : Apple_Terminal",
        \"CPU        : Intel i7-8750H (12) @ 2.20GHz",
        \"GPU        : Intel UHD Graphics 630, Radeon Pro 555X",
        \"",
        \]
let g:dashboard_custom_section={
  \ 'history': {
      \ 'description': ['☰ HISTORY     '],
      \ 'command': 'History'},
  \ 'session': {
      \ 'description': ['☰ LOAD SESSION'],
      \ 'command': 'SessionLoad'},
  \ 'create': {
      \ 'description': ['☰ CREATE FILE '],
      \ 'command': 'vi ~/File/Code/Demo/NewFile'},
  \ 'vimrc': {
      \ 'description': [' VIMRC'],
      \ 'command': 'vi  ~/.config/nvim/init.vim'},
  \ 'zshrc': {
      \ 'description': [' ZSHRC'],
      \ 'command': 'vi  ~/.zshrc'}
  \ }

" FZF
nnoremap <LEADER>H :History<CR>
nnoremap <LEADER>F :FZF ~/File/Code/<CR>

" ------------------------------------------------------------THEME

colorscheme darcula

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
noremap S :w<CR>
noremap Q :q<CR>

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

noremap <F5> :call CompileAndRun()<CR>
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
        elseif &filetype == 'markdown'
                exec "MarkdownPreview"
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





















