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
"Plug 'Yggdroot/indentLine'

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
" use <CR> to select
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

" GOLANG
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" CALENDAR
" use \\ to start a clock
Plug 'itchyny/calendar.vim'

" DEVICONS
Plug 'ryanoasis/vim-devicons'

" NERDTREE-HIGHLIGHT
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" CURSORWORD
Plug 'itchyny/vim-cursorword'

call plug#end()
