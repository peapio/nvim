
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" �����װ
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/vim/plugged')
"�������
"Plug 'hardcoreplayers/spaceline.vim'
" Plug 'itchyny/lightline.vim'
Plug 'liuchengxu/eleline.vim'
Plug 'hardcoreplayers/vim-buffet'
Plug 'luochen1990/rainbow'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'hardcoreplayers/oceanic-material'
Plug 'mhartington/oceanic-next'
Plug 'hardcoreplayers/dashboard-nvim'
Plug 'morhetz/gruvbox'
Plug 'octol/vim-cpp-enhanced-highlight',{'for':'cpp'} " c++����
Plug 'Yggdroot/indentLine'                            " �������ӻ�
Plug 'ryanoasis/vim-devicons'                         " �����ֲ�������ļ�ͼ��
Plug 'chrisbra/changesPlugin'                         " �ļ��޸���ʾ
Plug 'itchyny/vim-cursorword'                         " ����ڵ����ϻ���һ���»���
Plug 'kristijanhusak/defx-icons'
"���ܲ�� :ʹ�ø�˳��
Plug 'chxuan/vim-edit'
Plug 'gcmt/wildfire.vim'                                                                  " ����ѡ��enter
Plug 'suan/vim-instant-markdown',  {'for': 'markdown'}                                    " markdownԤ��
Plug 'dhruvasagar/vim-table-mode', {'on':'TableModeToggle'}                               " ���淶�ı��
Plug 'kshenoy/vim-signature'                                                              " ��ǩ��ת��ma
Plug 'junegunn/vim-easy-align'                                                            " ���ٶ��� ,a2<space>�ڶ����ո���룬,a-<space>������,a*<space>���У�,a<Enter>*<space>�Ҷ���
Plug 'easymotion/vim-easymotion',  {'on':['<Plug>(easymotion-w)','<Plug>(easymotion-b)']} " �����ƶ�
Plug 'terryma/vim-smooth-scroll'                                                          " ƽ����ҳ
Plug 'rhysd/clever-f.vim'                                                                 " ����F������������f��ת
Plug 'rhysd/accelerated-jk'                                                               " ����jk��
Plug 'tpope/vim-repeat'                                                                   " ��ǿ�����ܣ������ظ�surround
Plug 'junegunn/vim-slash'                                                                 " �������ƶ�ȡ������
Plug 'itchyny/screensaver.vim',    {'on': 'ScreenSaver'}                                  " ��Ļ��������
Plug 'jiangmiao/auto-pairs'                                                               " �Զ���ȫ����
Plug 'tpope/vim-commentary'                                                               " ע�Ͳ��
Plug 'tpope/vim-surround'                                                                 " yss"�ӣ��ţ�csw'" ���޸ĳɣ���ds'ɾ����
Plug 'vim-scripts/fcitx.vim',      {'for': ['markdown','cpp','vim','sh']}                 " �л����Ĳ�Ӱ����ͨģʽ����
" ���ܲ��:
Plug 'dense-analysis/ale'                                                                                    " ������ʾ
Plug 'neoclide/coc.nvim',            {'branch': 'release'}                                                   " �Զ���ȫ
Plug 'honza/vim-snippets'                                                                                    " ����Ƭ
Plug 'yianwillis/vimcdoc'                                                                                    " vim�����ֲ�
Plug 'mbbill/undotree',              {'on':'UndotreeToggle'}                                                 " ������������ع���
Plug 'junegunn/fzf',                 {'on':['Files', 'History', 'Colors', 'Rg', 'Marks'] }                   " fzfģ�������ļ�
Plug 'junegunn/fzf.vim',             {'on':['Files', 'History', 'Colors', 'Rg', 'Marks']}
Plug 'sbdchd/neoformat',             {'on':'Neoformat'}                                                      " ��ʽ���ļ�(�һ�û�ù�)leader>nf
Plug 'voldikss/vim-floaterm',        { 'on': 'FloatermNew' }                                                 " �����ն�
Plug 'liuchengxu/vista.vim',         {'on':'Vista'}                                                          " �鿴����ʲô��
Plug 'kristijanhusak/defx-git',      {'on':'Defx'}                                                           " �鿴�ļ���
Plug 'Shougo/defx.nvim',             { 'do': ':UpdateRemotePlugins'}
Plug 'tyru/open-browser.vim',        {'on':['<Plug>(openbrowser-smart-search)', '<Plug>(openbrowser-open)']} " gx google����, gu������
Plug 'mg979/vim-visual-multi',       {'branch': 'master'}                                                    " <c-n> ��������
Plug 'voldikss/vim-translator',      { 'on':'<Plug>Translate' }                                              " ���ʷ��� leader>tl
Plug 'junegunn/goyo.vim',            {'on':'Goyo'}                                                           " רעģʽgy����
Plug 'tweekmonster/startuptime.vim', {'on': 'StartupTime'}                                                   " �鿴��������ʱ��
" ��ѡ
"Plug 'sheerun/vim-polyglot',{'for':['c', 'h', 'cpp', 'py', 'go', 'java', 'vim', 'json', 'hs']}
"Plug 'vim-scripts/vim-auto-save'
"Plug 'kien/rainbow_parentheses.vim'
"Plug 'Yggdroot/LeaderF', { 'do': './install.sh' } " �ļ�����
"Plug 'wakatime/vim-wakatime'                      " ͳ�ƴ���ʱ��
"Plug 'SirVer/ultisnips'
"Plug 'rhysd/github-complete.vim'
"Plug 'simnalamburt/vim-mundo'                     "  ���������ӻ�


call plug#end()
