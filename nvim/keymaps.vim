map ; :
map <LEADER>l <C-w>l
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>h <C-w>h
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
map <up> :res+5<CR>
map <down> :res-5<CR>

noremap [ 0
noremap ] $
noremap H 5h
noremap L 5l
noremap J 5j
noremap K 5k
noremap s <nop>
noremap <LEADER>- :split<CR>
noremap <LEADER>= :vsplit<CR>
noremap <LEADER>x :nohlsearch<CR>
noremap S :w<CR>
noremap Q :q<CR>
noremap \, /<=><CR>:nohlsearch<CR>c3l
noremap <LEADER>t :TranslateW<cr>

inoremap \\* /*<CR><ESC>xi*/<ESC>I<CR><ESC>ki
inoremap \''' '''<CR><CR>'''<ESC>ki
inoremap \, <ESC>/<=><CR>:nohlsearch<CR>c3l

vnoremap <leader>t :TranslateW<cr>
