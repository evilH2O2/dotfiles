syntax on
set nu
set tabstop=4 "用于设置Tab键宽度,默认为 8 
set shiftwidth=4 " 表示每一级缩进的长度
set autoindent  "自动缩进
set smartindent " 加强版缩进
set expandtab       " 设置缩进用空格来表示
colorscheme basepurple
set cul "浅色高亮当前行
set history=1000
set autoread	 " 当文件在外部被修改，自动更新该文件
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

" Don’t add empty newlines at the end of files
set binary
set noeol

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undodir
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list

" 将./ 两键绑定为 nohlsearch
nmap <silent> ./ :nohlsearch<CR>

" 倒换 jk 键
nn j k
nn k j
" 快捷插入 " 号
nn <leader>' viw<esc>a"<esc>hbi"<esc>lel  

" Vim 最大化,需要 .dll文件，位置&使用方法：
" https://github.com/derekmcloughlin/gvimfullscreen_win32
" 不要进入 Vim后再全屏，在终端下全屏，然后在进入vim，不然会卡住
" 卡住后，只需要正常退出即可（:wq）
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

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
