syntax on
set nu
set tabstop=4 "用于设置Tab键宽度,默认为 8 
set shiftwidth=4
colorscheme basepurple
set cul "浅色高亮当前行
set history=1000
set autoread	 " 当文件在外部被修改，自动更新该文件
set autoindent  "自动缩进
set smartindent " 加强版缩进
set hlsearch " 搜索时高亮显示被找到的文本
set incsearch " 输入关键字的时候实时高亮显示
set showcmd " 在状态行中显示（部分）命令
set mouse=a " 使用鼠标
set laststatus=2  " 总是显示状态行
set wildmenu " 状态栏显示候选补全命令
set shortmess=atI " 启动的时候不显示那个援助乌干达儿童的提示
set backspace=2 " 解决插入模式下delete/backspce键失效问题
" set guifont=console:h11  " Font
set guifont=Source\ Code\ pro\ h11  " Font
" set guifont=Sauce\ Code\ Pro\ h11
set showmatch  " 自动匹配括号
" set novb " 错误不响铃,闪烁  t_vb 为闪烁
set vb t_vb= " 错误不响铃不闪烁
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

" ------------插件---------------
call plug#begin('~/.vim/plugged')  "为插件指定目录

Plug 'https://github.com/itchyny/lightline.vim'  " 状态栏插件

Plug 'https://github.com/w0rp/ale.git' " 代码检查

Plug 'godlygeek/tabular' " 使vim支持mardown，配合 vim-mardown使用，并在它的前面

Plug 'plasticboy/vim-markdown' "markdown 插件

" Plug 'junegunn/goyo.vim', {'on': 'Goyo'} " 无干扰写作

Plug 'https://github.com/scrooloose/nerdtree.git' " 树状资源管理器

Plug 'ap/vim-css-color', {'for': ['css', 'scss', 'py', 'php', 'js', 'html']}  " 颜色预览

Plug 'dhruvasagar/vim-table-mode'  " 智能 table

Plug 'godlygeek/tabular'  " 代码等号对齐 选中后(可视模式下使用) :Tabularize /= | /:

Plug 'yianwillis/vimcdoc'  " 中文帮助, :help汉化

" Plug 'ryanoasis/vim-devicons' " 保持在最后，配合 nerdtree的文件图标

call plug#end()  " 初始化插件系统

"-----------------------------------

"-----vim-markdown
let g:vim_markdown_toml_frontmatter = 1  " 突出Jekyll或Hugo使用的YAML前端物质
let g:vim_markdown_new_list_item_indent = 2  " 自动缩进 2 格
let g:vim_markdown_math = 1 " LaTeX math
let g:vim_markdown_folding_disabled = 1 " 禁用折叠


" -----树状资源管理器-------
"  设置 C-n 键打开
map <C-n> :NERDTreeToggle<CR>  

"------ 智能table ------
let g:table_mode_corner = '|'
let g:table_mode_delimiter = ' '
