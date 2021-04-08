
"设置光标不同模式不同形状
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' | 
    \   silent execute '!echo -ne "\e[5 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[3 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 隐藏GVIM菜单及设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim    "  窗口大小
"set lines=35 columns=140       "  分割出来的窗口位于当前窗口下边/右边
"set splitbelow
"set splitright                 "  不显示工具/菜单栏
"set guioptions-=T
"set guioptions-=m
"set guioptions-=L
"set guioptions-=r
"set guioptions-=b              "  使用内置 tab 样式而不是 gui
"set guioptions-=e
"set nolist

set nu
set relativenumber
set showtabline=1              "  show顶部标签栏
syntax enable                  "  开启语法高亮
set showmatch                  "  显示匹配的括号"
set mouse=a                    "  启用鼠标"
set hlsearch                   "  高亮搜索项"
exec "nohlsearch"
set smartcase
syntax on                      "  语法高亮
set t_Co=256                   "  支持256色"
set nowrap                     "  默认不换行"
set laststatus=2               "  状态栏显示在底部倒数第二行"
set incsearch                  "  输入搜索内容就显示搜索结果"
set scrolloff=5                "  距离顶部和底部5行，将光标垂直居中放在屏幕上，当滚动或搜索大文件时"
set whichwrap+=<,>,h,l         "  左键右键自动换行"
set cursorline                 "  凸显当前行"
"set cursorcolumn              "  凸显当前列
set autoindent                 "  沿用上一行缩进"
"set smartindent               "  智能缩进
set cindent                    "  可以设置不同缩进风格"
set fileencodings=gbk,utf-8,ucs-bom,gb18030,gb2312,cp936
set encoding=UTF-8
" colorscheme gruvbox
set background=dark
autocmd vimenter * colorscheme gruvbox
autocmd vimenter * RainbowToggleOn
let g:SnazzyTransparent = 1
let g:lightline = {
            \ 'colorscheme': 'gruvbox',
            \ }
set clipboard=unnamed
set clipboard=unnamedplus
set wildmenu                   "  开启命令行补全
set showmatch                  "  显示括号配对情况
set softtabstop=4              "  设置按BackSpace的时候可以一次删除掉4个空格
set tabstop=4                  "  设定 tab 长度为 4
set shiftwidth=4
set expandtab
set cindent
set backspace=indent,eol,start "  让退格键和 Delete 键支持删除回车符
set ruler                      "  显示光标的坐标
set list
set listchars=tab:▸-,trail:- 
set encoding=utf-8  
set termencoding=utf-8   
set fileencoding=chinese 
set fileencodings=ucs-bom,utf-8,chinese   
set langmenu=zh_CN.utf-8  
source $VIMRUNTIME/delmenu.vim  
source $VIMRUNTIME/menu.vim
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"设置光标回到上次编辑的位置
