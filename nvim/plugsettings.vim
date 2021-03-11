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
"let g:indent_guides_guide_size  = 1
"let g:indent_guides_start_level = 2

" NERDTREE
nnoremap tt :NERDTreeToggle<CR>
let g:NERDTreeHidden=0
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif

" AIRLINE
nnoremap <tab> :bn<cr>
let g:airline_powerline_fonts            = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'base16_google'

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
                        \ 'coc-clangd',
                        \ 'coc-go',
                        \ 'coc-markdownlint',
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
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm()
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
        \'OS         : macOS 11.2.2 20D64 x86_64',
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

" GOLANG
let g:go_echo_go_info = 0
let g:go_doc_popup_window = 1
let g:go_def_mapping_enabled = 0
let g:go_template_autocreate = 0
let g:go_textobj_enabled = 0
let g:go_auto_type_info = 1
let g:go_def_mapping_enabled = 0
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_structs = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_assignments = 0
let g:go_highlight_variable_declarations = 0
let g:go_doc_keywordprg_enabled = 0

" CALENDAR
nnoremap \\ :Calendar -view=clock -position=here<CR>

" NERDTREE-HIGHLIGHT
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

" CLANG-FORMAT
let g:clang_format#code_style = "chromium"
let g:clang_format#auto_format = 1
