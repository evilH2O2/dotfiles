syntax on
set nu
set tabstop=4 "用于设置Tab键宽度,默认为 8 
set shiftwidth=4 " 表示每一级缩进的长度
set autoindent  "自动缩进
set smartindent " 加强版缩进
set expandtab       " 设置缩进用空格来表示
"set background=dark
if (has ("gui_running"))
    colorscheme solarized
else
    colorscheme basepurple
endif
set cul "浅色高亮当前行
set history=1000
set autoread     " 当文件在外部被修改，自动更新该文件
set hlsearch " 搜索时高亮显示被找到的文本
set incsearch " 输入关键字的时候实时高亮显示
set showcmd " 在状态行中显示（部分）命令
set mouse=a " 使用鼠标
set laststatus=2  " 总是显示状态行
set wildmenu " 状态栏显示候选补全命令
set shortmess=atI " 启动的时候不显示那个援助乌干达儿童的提示
set backspace=2 " 解决插入模式下delete/backspce键失效问题
" set guifont=console:h11  " Font
"set guifont=Source\ Code\ pro\ h11  " Font
" set guifont=Sauce\ Code\ Pro\ h11
set showmatch  " 自动匹配括号
" set novb " 错误不响铃,闪烁  t_vb 为闪烁
set vb t_vb= " 错误不响铃不闪烁
"set scrolloff=5                 "距离顶部和底部5行

"set fdm=indent   "使用缩进指导折叠
set fdm=manual

" Don’t add empty newlines at the end of files
set binary
set noeol

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undofile
if exists("&undodir")
    set undodir=~/.vim/undodir
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

"Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list


"------------- Keymap -------------------
" <CR> = Enter
"
" 将./ 两键绑定为 nohlsearch
nmap <silent> ./ :nohlsearch<CR>

" 倒换 jk 键
nn j k
nn k j
" 快捷插入 " 号
nn <leader>' viw<esc>a"<esc>hbi"<esc>lel  

nn <space> za  "使用空格键来折叠（和取消折叠)
" Vim 最大化,需要 .dll文件，位置&使用方法：
" https://github.com/derekmcloughlin/gvimfullscreen_win32
" 不要进入 Vim后再全屏，在终端下全屏，然后在进入vim，不然会卡住
" 卡住后，只需要正常退出即可（:wq）
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

nmap <F8> :TagbarToggle<CR>

" vimviki+markdown
nmap <leader>m :set filetype=markdown<CR>

" Gvim paste
imap <C-v> <esc>"+gPa

"--------------- autocmd -------------
autocmd BufNewFile,BufRead *.info source ~/.vim/ftplugin/highcolor.vim


" 字符编码
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" Gvim 解决乱码
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
set fileencoding=chinese
else
set fileencoding=utf-8
endif
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"解决consle输出乱码
language messages zh_CN.utf-8

" 显示中文帮助
if version >= 603
set helplang=cn
set encoding=utf-8
endif


"###############
call plug#begin('~/.vim/plugged')

Plug 'vimwiki/vimwiki'

Plug 'https://github.com/scrooloose/nerdtree.git' " 树状资源管理器

Plug 'ap/vim-css-color', {'for': ['css', 'scss', 'py', 'php', 'js', 'html']}  " 颜色预览

Plug 'dhruvasagar/vim-table-mode'  " 智能 table

Plug 'godlygeek/tabular'  " 代码等号对齐 选中后(可视模式下使用) :Tabularize /= | /:

Plug 'yianwillis/vimcdoc'  " 中文帮助, :help汉化

Plug 'SirVer/ultisnips'

Plug 'honza/vim-snippets'

Plug 'vim-scripts/taglist.vim'

Plug 'plasticboy/vim-markdown' "markdown 插件

" ==== markdown contents

Plug 'majutsushi/tagbar'

Plug 'xolox/vim-misc'

Plug 'xolox/vim-easytags'

Plug 'jszakmeister/markdown2ctags'

call plug#end()

" -------------------------------

" -----树状资源管理器-------
"  "  设置 C-n 键打开
map <C-n> :NERDTreeToggle<CR>  
"
"  "------ 智能table ------
let g:table_mode_corner = '|'
let g:table_mode_delimiter = ' '

"-------- ultisnips ----------
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsSnippetDirectories=['UltiSnips']
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"----- taglist -------
let Tlist_Use_Right_Window = 1          "让taglist窗口出现在Vim的右边
let Tlist_File_Fold_Auto_Close = 1      "当同时显示多个文件中的tag时，设置为1，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来。
let Tlist_Show_One_File = 1             "只显示一个文件中的tag，默认为显示多个
let Tlist_Sort_Type ='name'             "Tag的排序规则，以名字排序。默认是以在文件中出现的顺序排序
let Tlist_GainFocus_On_ToggleOpen = 1       "Taglist窗口打开时，立刻切换为有焦点状态
let Tlist_Exit_OnlyWindow = 1           "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_WinWidth = 18             "设置窗体宽度为32，可以根据自己喜好设置
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'  "这里比较重要了，设置ctags的位置，不是指向MacOS自带的那个，而是我们用homebrew安装的那个
map t :TlistToggle<CR>              "热键设置，设置成Leader+t来呼出和关闭Taglist

"--------- vimwiki -------------
let g:vimwiki_list = [{'path': '~/desktop/Wiki/', 'syntax': 'markdown', 'ext': '.md'}]


"------- markdown2ctags + tagbar-----
" Add support for markdown files in tagbar.
let g:tagbar_type_markdown = {
    \ 'ctagstype': 'markdown',
    \ 'ctagsbin' : '~/.vim/plugged/markdown2ctags/markdown2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes --sro=»',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '»',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }