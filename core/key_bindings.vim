
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ¿ì½Ý¼üµÄÉèÖÃ
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " " 
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
noremap , :
inoremap <C-b> <Right>
noremap n nzz
noremap N Nzz
noremap H 0
noremap L $
noremap <leader>q :bd<CR>
noremap <leader>Q :q!<CR>
noremap <leader>x :q<CR>
noremap <c-k> <c-u>
noremap <c-j> <c-d>
nnoremap <Leader>D :packadd termdebug<CR><ESC>:Termdebug %< <CR><ESC><c-w>w<c-w>H<c-w>w<c-w>w
noremap <leader>o ggVG
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)
let g:accelerated_jk_acceleration_table = [2, 4, 7, 10]
nnoremap <Leader>V :e $MYVIMRC<CR>
noremap <silent> <c-k> :call smooth_scroll#up(&scroll, 40, 4)<CR>
noremap <silent> <c-j> :call smooth_scroll#down(&scroll, 40, 4)<CR>
" noremap <silent> <c-b> :call smooth_scroll#up(&scroll*20, 0, 4)<CR>
" noremap <silent> <c-f> :call smooth_scroll#down(&scroll*20, 0, 4)<CR>
map zl :set splitright<CR>:vsplit<CR>
map zh :set nosplitright<CR>:vsplit<CR>
map zj :set nosplitbelow<CR>:split<CR>
map zk :set splitbelow<CR>:split<CR>
map t= :Tabularize /=<CR>

map <leader>l :call RemSpace()<CR>
func! RemSpace()
    exec "g/^\s*$/d"
    exec "nohl"
endfunc

map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ -g % -o %<"
        exec "!./%<"
    elseif &filetype == 'cpp'
        exec "!g++ -g % -o %<"
        exec "!./%<"
    elseif &filetype == 'java' 
        exec "FloatermNew javac %" 
        exec "FloatermNew java %<"
    elseif &filetype == 'sh'
        :FloatermNew ./%
    elseif &filetype == 'py'
        exec "FloatermNew python %"
        exec "FloatermNew python %<"
    elseif &filetype == 'markdown'
        exec "MarkdownPreview"
    endif
endfunc
