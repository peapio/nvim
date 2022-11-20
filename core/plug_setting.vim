"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""goyo专注模式========================================
noremap <LEADER>gy :Goyo<CR>


"Vim-table-mode设置===================================================
map <LEADER>tm :TableModeToggle<CR>


" clever-f f键增强===================================================
let g:clever_f_smart_case=1


"Neoformat设置
nnoremap <LEADER>= :Neoformat<CR>========================================
"indentLine可视化缩进========================================================
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进


"auot save 自动保存=================================================
let g:auto_save = 1 
let g:auto_save_in_insert_mode = 0 


"spaceline==========================================================
" let g:spaceline_seperate_style= 'curve'
" let g:spaceline_git_branch_icon= ' '
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#formatter = 'default'



"撤销树=============================================================
nnoremap <Leader>u :UndotreeToggle<cr>
set undodir=~/.undodir/
set undofile


"easymotion快速移动===================================================
filetype plugin on
nmap ] <Plug>(easymotion-w)
nmap [ <Plug>(easymotion-b)


" nnoremap <leader>y :CopyText<cr>
nnoremap <leader>d :DeleteText<cr>
" nnoremap <leader>c :ChangeText<cr>
" nnoremap <leader>r :ReplaceTo<space>


"vim-commentary====================================================
"为python和shell等添加注释
autocmd FileType python,shell,coffee set commentstring=#\ %s
"修改注释风格
autocmd FileType java,c,cpp set commentstring=//\ %s


"easyalign快速对齐=============================================================
vmap <Leader>w <Plug>(EasyAlign)
nmap <Leader>w <Plug>(EasyAlign)
if !exists('g:easy_align_delimiters')
  let g:easy_align_delimiters = {}
endif
let g:easy_align_delimiters['#'] = { 'pattern': '#', 'ignore_groups': ['String'] }


"floaterm设置========================================================
hi Floaterm guibg=black
hi FloatermBorder guibg=none guifg=cyan
let g:floaterm_position = 'center'
let g:floaterm_wintype = 'floating'
noremap <LEADER>ftn :FloatermNew<CR>
noremap <LEADER>ftk :FloatermKill<CR>


"OpenBrowser设置=============================================================
let g:netrw_nogx = 1
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)
nmap gu <Plug>(openbrowser-open)
vmap gu <Plug>(openbrowser-open)


"Translator设置=============================================================
nmap <Leader>t <Plug>TranslateW
vmap <Leader>t <Plug>TranslateWV
let g:translator_window_max_width=0.3
let g:translator_window_max_height=0.3
let g:translator_default_engines=['youdao' , 'google']


"Vista设置===================================================================
noremap <LEADER>v :Vista<CR>
let g:vista#renderer#enable_icon = 1
let g:vista_disable_statusline = 1
let g:vista_default_executive = 'ctags'
let g:vista_echo_cursor_strategy = 'floating_win'
let g:vista_vimwiki_executive = 'markdown'
let g:vista_executive_for = {
			\ 'vimwiki': 'markdown',
			\ 'pandoc': 'markdown',
			\ 'markdown': 'toc',
			\ 'yaml': 'coc',
			\ 'typescript': 'coc',
			\ 'typescriptreact': 'coc',
			\ }


" vim-buffet设置===================================================
nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)
let g:buffet_always_show_tabline = 1
let g:buffet_powerline_separators = 1
let g:buffet_show_index =1
let g:buffet_use_devicons = 1


"als自动报错===========================================
" ale-setting {{{
let g:ale_set_highlights = 0
"自定义error和warning图标
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
"在vim自带的状态栏中整合ale
"let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {
            \   'c++': ['clang'],
            \   'c': ['clang'],
            \}


"彩虹括号=====================================================================
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\   'ctermfgs': ['lightyellow', 'lightcyan','lightblue', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}


" Plug 'neovim/nvim-lspconfig'
  if has("nvim")
    Plug 'williamboman/nvim-lsp-installer'
  endif
  Plug 'SirVer/ultisnips'
  Plug 'jayli/vim-easycomplete'

  nnoremap gr :EasyCompleteReference<CR>
  nnoremap gd :EasyCompleteGotoDefinition<CR>
  nnoremap rn :EasyCompleteRename<CR>
  nnoremap gb :BackToOriginalBuffer<CR>

  let g:easycomplete_diagnostics_enable = 1
  let g:easycomplete_signature_enable = 1
  let g:easycomplete_tabnine_enable = 1
  let g:easycomplete_cursor_word_hl = 1
  let g:easycomplete_scheme = "blue"
  let g:easycomplete_menu_skin = {
        \   "buf": {
        \      "kind":"羅",
        \      "menu":"[B]",
        \    },
        \   "snip": {
        \      "kind":"",
        \      "menu":"[S]",
        \    },
        \   "dict": {
        \      "kind":"",
        \      "menu":"[D]",
        \    },
        \   "tabnine": {
        \      "kind":"",
        \    },
        \ }
  let g:easycomplete_sign_text = {
        \   'error':       "",
        \   'warning':     "",
        \   'information': '',
        \   'hint':        ''
        \ }

  let g:easycomplete_filetypes = {"r": {
        \ "whitelist": []
        \ }}
  let g:easycomplete_tabnine_config = {
        \ 'line_limit': 800,
        \ 'max_num_result': 10,
        \ }

  let g:easycomplete_lsp_type_font = {
        \ 'class': "",     'color': "",
        \ 'constant': "",  'constructor': "",
        \ 'enum': "",      'enummember': "",
        \ 'field': "料",    'file': '',
        \ 'folder': "",    'function': "ƒ",
        \ 'interface': "", 'keyword': "",
        \ 'snippet': "",   'struct': "פּ",
        \ 'text': "",      'typeparameter': "",
        \ 'variable': "",  'module':'',
        \ 'event': '',
        \ 'r':'', 't':'',
        \ 'f':'', 'c':'',
        \ 'u':'𝘶', 'e':'𝘦',
        \ 's':'פּ', 'v':'',
        \ 'i':'𝘪', 'm':'',
        \ 'p':'', 'k':'𝘬',
        \ 'o':"𝘰", 'd':'𝘥',
        \ 'l':"𝘭", 'a':"𝘢",
        \ }


"coc.nvim自动补全============================================================
"
"Use <Tab> and <S-Tab> to navigate the completion list
"
"set hidden
"set updatetime=100
"set shortmess+=c
"set signcolumn=yes
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
""使用tab
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"inoremap <silent><expr> <c-space> coc#refresh()
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
"nnoremap <silent> K :call <SID>show_documentation()<CR>
"function! s:show_documentation()
"  if (index(['vim','help'], &filetype) >= 0)
"    execute 'h '.expand('<cword>')
"    
"  else
"    call CocAction('doHover')
"  endif
"endfunction
"autocmd CursorHold * silent call CocActionAsync('highlight')
"nmap <leader>rn <Plug>(coc-rename)
"augroup mygroup
"  autocmd!
"  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"augroup end
"" xmap <leader>a  <Plug>(coc-codeaction-selected)
"" nmap <leader>a  <Plug>(coc-codeaction-selected)
"" nmap <leader>ac  <Plug>(coc-codeaction)
"" nmap <leader>qf  <Plug>(coc-fix-current)
"xmap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap if <Plug>(coc-funcobj-i)
"omap af <Plug>(coc-funcobj-a)
"command! -nargs=0 Format :call CocAction('format')
"command! -nargs=? Fold :call     CocAction('fold', <f-args>)
"command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')


"Leaderf设置============================================================
"文件搜索
"nnoremap <silent> <Leader>f :Leaderf file<CR>
""历史打开过的文件
"nnoremap <silent> <Leader>m :Leaderf mru<CR>
""Buffer
"nnoremap <silent> <Leader>b :Leaderf buffer<CR>
""函数搜索（仅当前文件里）
"nnoremap <silent> <Leader>F :Leaderf function<CR>
""模糊搜索，很强大的功能，迅速秒搜
"nnoremap <silent> <Leader>rg :Leaderf rg<CR>
"" leaderf个性化设置
"let g:Lf_HideHelp = 1
"let g:Lf_UseCache = 0
"let g:Lf_UseVersionControlTool = 0
"let g:Lf_IgnoreCurrentBufferName = 1
"let g:Lf_WindowPosition = 'popup'
"let g:Lf_PreviewInPopup = 1
"let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
"let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }


" Defx设置====================================================================
noremap <LEADER>e :Defx<CR>
call defx#custom#option('_', {
			\ 'resume': 1,
			\ 'winwidth': 30,
			\ 'split': 'vertical',
			\ 'direction': 'topleft',
			\ 'show_ignored_files': 0,
			\ 'columns': 'mark:indent:git:icons:filename',
			\ 'root_marker': '',
			\ })
call defx#custom#column('git', {
			\   'indicators': {
			\     'Modified'  : '•',
			\     'Staged'    : '✚',
			\     'Untracked' : 'ᵁ',
			\     'Renamed'   : '≫',
			\     'Unmerged'  : '≠',
			\     'Ignored'   : 'ⁱ',
			\     'Deleted'   : '✖',
			\     'Unknown'   : '⁇'
			\   }
			\ })
call defx#custom#column('mark', { 'readonly_icon': '', 'selected_icon': '' })
augroup user_plugin_defx
	autocmd!
	autocmd FileType defx call <SID>defx_mappings()
	autocmd WinEnter * if &filetype == 'defx' && winnr('$') == 1 | bdel | endif
	autocmd TabLeave * if &filetype == 'defx' | wincmd w | endif
augroup END
function! s:jump_dirty(dir) abort
	let l:icons = get(g:, 'defx_git_indicators', {})
	let l:icons_pattern = join(values(l:icons), '\|')
	if ! empty(l:icons_pattern)
		let l:direction = a:dir > 0 ? 'w' : 'bw'
		return search(printf('\(%s\)', l:icons_pattern), l:direction)
	endif
endfunction
function! s:defx_toggle_tree() abort
	if defx#is_directory()
		return defx#do_action('open_or_close_tree')
	endif
	return defx#do_action('multi', ['drop'])
endfunction
function! s:defx_mappings() abort
	setlocal signcolumn=no expandtab
	nnoremap <silent><buffer><expr> <CR>     <SID>defx_toggle_tree()                    " 打开或者关闭文件夹，文件
	nnoremap <silent><buffer><expr> <C-h>     defx#do_action('toggle_ignored_files')     " 显示隐藏文件
	nnoremap <silent><buffer><expr> c defx#do_action('copy')
	nnoremap <silent><buffer><expr> m defx#do_action('move')
	nnoremap <silent><buffer><expr> p defx#do_action('paste')
	nnoremap <silent><buffer><expr> d defx#do_action('open')
	nnoremap <silent><buffer><expr> K defx#do_action('new_directory')
	nnoremap <silent><buffer><expr> N defx#do_action('new_file')
	nnoremap <silent><buffer><expr> M defx#do_action('new_multiple_files')
	nnoremap <silent><buffer><expr> C defx#do_action('toggle_columns', 'mark:indent:icon:filename:type:size:time')
	nnoremap <silent><buffer><expr> S defx#do_action('toggle_sort', 'time')
	nnoremap <silent><buffer><expr> x defx#do_action('remove')
	nnoremap <silent><buffer><expr> r defx#do_action('rename')
	nnoremap <silent><buffer><expr> ! defx#do_action('execute_command')
	nnoremap <silent><buffer><expr> l defx#do_action('execute_system')
	nnoremap <silent><buffer><expr> yy defx#do_action('yank_path')
	nnoremap <silent><buffer><expr> <C-h> defx#do_action('toggle_ignored_files')
	nnoremap <silent><buffer><expr> ; defx#do_action('repeat')
	nnoremap <silent><buffer><expr> a defx#do_action('cd', ['..'])
	nnoremap <silent><buffer><expr> ~ defx#do_action('cd')
	nnoremap <silent><buffer><expr> q defx#do_action('quit')
	nnoremap <silent><buffer><expr> <Space> defx#do_action('toggle_select') . 'j'
	nnoremap <silent><buffer><expr> * defx#do_action('toggle_select_all')
	nnoremap <silent><buffer><expr> j line('.') == line('$') ? 'gg' : 'j'
	nnoremap <silent><buffer><expr> k line('.') == 1 ? 'G' : 'k'
	nnoremap <silent><buffer><expr> <C-g> defx#do_action('print')
	nnoremap <silent><buffer><expr> cd defx#do_action('change_vim_cwd')
	nnoremap <silent><buffer><expr> u   defx#do_action('cd', ['..'])
	nnoremap <silent><buffer><expr> 2u  defx#do_action('cd', ['../..'])
	nnoremap <silent><buffer><expr> 3u  defx#do_action('cd', ['../../..'])
	nnoremap <silent><buffer><expr> 4u  defx#do_action('cd', ['../../../..'])
endfunction
function! s:defx_toggle_tree() abort
	if defx#is_directory()
		return defx#do_action('open_or_close_tree')
	endif
	return defx#do_action('multi', ['drop'])
endfunction
function! s:defx_toggle_tree() abort
	if defx#is_directory()
		return defx#do_action('open_or_close_tree')
	endif
	return defx#do_action('multi', ['drop'])
endfunction
let g:defx_icons_column_length = 2
let g:defx_icons_mark_icon = ''
let g:defx_icons_parent_icon = ""


"FZF模糊搜索设置=======================================================
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nmap <Leader>cn :<C-u>DashboardNewFile<CR>
nnoremap <Leader>m :History<CR>
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>c :Colors<CR>
" nnoremap <Leader>fa :Rg<CR>
nnoremap <Leader>b :Marks<CR>
let g:fzf_preview_window = 'right:60%'
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
function! s:list_buffers()
	redir => list
	silent ls
	redir END
	return split(list, "\n")
endfunction
function! s:delete_buffers(lines)
	execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunction
command! BD call fzf#run(fzf#wrap({
			\ 'source': s:list_buffers(),
			\ 'sink*': { lines -> s:delete_buffers(lines) },
			\ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
			\ }))
noremap <c-d> :BD<CR>
let g:fzf_layout = { 'window': { 'width': 0.7, 'height': 0.6 } }
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   )
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)
nnoremap <silent> <Leader>A :Ag<CR>


"Dashboard设置
let g:dashboard_custom_header=[
    \'',
    \' ⣇⣿⠘⣿⣿⣿⡿⡿⣟⣟⢟⢟⢝⠵⡝⣿⡿⢂⣼⣿⣷⣌⠩⡫⡻⣝⠹⢿⣿⣷ ',
    \' ⡆⣿⣆⠱⣝⡵⣝⢅⠙⣿⢕⢕⢕⢕⢝⣥⢒⠅⣿⣿⣿⡿⣳⣌⠪⡪⣡⢑⢝⣇ ',
    \' ⡆⣿⣿⣦⠹⣳⣳⣕⢅⠈⢗⢕⢕⢕⢕⢕⢈⢆⠟⠋⠉⠁⠉⠉⠁⠈⠼⢐⢕⢽ ',
    \' ⡗⢰⣶⣶⣦⣝⢝⢕⢕⠅⡆⢕⢕⢕⢕⢕⣴⠏⣠⡶⠛⡉⡉⡛⢶⣦⡀⠐⣕⢕ ',
    \' ⡝⡄⢻⢟⣿⣿⣷⣕⣕⣅⣿⣔⣕⣵⣵⣿⣿⢠⣿⢠⣮⡈⣌⠨⠅⠹⣷⡀⢱⢕ ',
    \' ⡝⡵⠟⠈⢀⣀⣀⡀⠉⢿⣿⣿⣿⣿⣿⣿⣿⣼⣿⢈⡋⠴⢿⡟⣡⡇⣿⡇⡀⢕ ',
    \' ⡝⠁⣠⣾⠟⡉⡉⡉⠻⣦⣻⣿⣿⣿⣿⣿⣿⣿⣿⣧⠸⣿⣦⣥⣿⡇⡿⣰⢗⢄ ',
    \' ⠁⢰⣿⡏⣴⣌⠈⣌⠡⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣬⣉⣉⣁⣄⢖⢕⢕⢕ ',
    \' ⡀⢻⣿⡇⢙⠁⠴⢿⡟⣡⡆⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣵⣵⣿ ',
    \' ⡻⣄⣻⣿⣌⠘⢿⣷⣥⣿⠇⣿⣿⣿⣿⣿⣿⠛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ',
    \' ⣷⢄⠻⣿⣟⠿⠦⠍⠉⣡⣾⣿⣿⣿⣿⣿⣿⢸⣿⣦⠙⣿⣿⣿⣿⣿⣿⣿⣿⠟ ',
    \' ⡕⡑⣑⣈⣻⢗⢟⢞⢝⣻⣿⣿⣿⣿⣿⣿⣿⠸⣿⠿⠃⣿⣿⣿⣿⣿⣿⡿⠁⣠ ',
    \' ⡝⡵⡈⢟⢕⢕⢕⢕⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣿⣿⣿⣿⣿⠿⠋⣀⣈⠙ ',
    \' ⡝⡵⡕⡀⠑⠳⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⢉⡠⡲⡫⡪⡪⡣ ',
    \'',
    \]
let g:dashboard_default_executive ='fzf'
" let g:dashboard_custom_shortcut={
"       \ 'last_session'       : 'Ctrl X',
"       \ 'find_history'       : 'Ctrl H',
"       \ 'find_file'          : 'Ctrl P',
"       \ 'new_file'           : 'Ctrl E',
"       \ 'change_colorscheme' : 'Ctrl T',
"       \ 'find_word'          : 'Ctrl F',
"       \ 'book_marks'         : 'Ctrl M',
"       \ }
let g:dashboard_custom_shortcut={
			\ 'last_session'       : 'SPC s l',
			\ 'find_history'       : 'SPC m',
			\ 'find_file'          : 'SPC f',
			\ 'new_file'           : 'SPC n',
			\ 'change_colorscheme' : 'SPC c',
			\ 'fnd_word'          : 'SPC f a',
			\ 'book_marks'         : 'SPC b',
			\ }
noremap <LEADER>n :DashboardNewFile<CR>
autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2
let g:indentLine_fileTypeExclude = ['dashboard']


let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
set noshowmode
set laststatus=2
" if !has('gui_running')
"   set t_Co=256
" endif

function! Buf_total_num()
    return len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
endfunction
function! File_size(f)
    let l:size = getfsize(expand(a:f))
    if l:size == 0 || l:size == -1 || l:size == -2
        return ''
    endif
    if l:size < 1024
        return l:size.' bytes'
    elseif l:size < 1024*1024
        return printf('%.1f', l:size/1024.0).'k'
    elseif l:size < 1024*1024*1024
        return printf('%.1f', l:size/1024.0/1024.0) . 'm'
    else
        return printf('%.1f', l:size/1024.0/1024.0/1024.0) . 'g'
    endif
endfunction
set statusline=%<%1*[B-%n]%*
" TOT is an abbreviation for total
set statusline+=%2*[TOT:%{Buf_total_num()}]%*
set statusline+=%3*\ %{File_size(@%)}\ %*
set statusline+=%4*\ %F\ %*
set statusline+=%5*『\ %{exists('g:loaded_ale')?ALEGetStatusLine():''}』%{exists('g:loaded_fugitive')?fugitive#statusline():''}%*
set statusline+=%6*\ %m%r%y\ %*
set statusline+=%=%7*\ %{&ff}\ \|\ %{\"\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"\ \|\"}\ %-14.(%l:%c%V%)%*
set statusline+=%8*\ %P\ %*
" default bg for statusline is 236 in space-vim-dark
hi User1 cterm=bold ctermfg=232 ctermbg=179
hi User2 cterm=None ctermfg=214 ctermbg=242
hi User3 cterm=None ctermfg=251 ctermbg=240
hi User4 cterm=bold ctermfg=169 ctermbg=239
hi User5 cterm=None ctermfg=208 ctermbg=238
hi User6 cterm=None ctermfg=246 ctermbg=237
hi User7 cterm=None ctermfg=250 ctermbg=238
hi User8 cterm=None ctermfg=249 ctermbg=240
