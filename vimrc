set nocompatible              " be iMproved, required
set backspace=indent,eol,start
filetype off                  " required

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
 set rtp+=/home/dev/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'matchit.zip' "match html 标签插件
" Plugin 'cscope.vim' "搜索代码用的插件
Plugin 'bufexplorer.zip' "最近浏览过的文件
Plugin 'stephpy/vim-php-cs-fixer' "php fix PSR-1 and PSR-2
Plugin 'shawncplus/phpcomplete.vim' "php 补全增强
Plugin 'arnaud-lb/vim-php-namespace' "生成namespace
Plugin 'MarcWeber/vim-addon-mw-utils' "snippets 依赖
Plugin 'tomtom/tlib_vim' "snippets 依赖
Plugin 'garbas/vim-snipmate' "snippets 依赖
Plugin 'honza/vim-snippets' "snippets 代码生成
Plugin 'flazz/vim-colorschemes' "集成各配色主题
Plugin 'rking/ag.vim' "ag 代码搜索工具
" Git plugin not hosted on GitHub
Plugin 'https://github.com/vim-scripts/PDV--phpDocumentor-for-Vim.git' "php注释生成插件
Plugin 'https://github.com/bling/vim-airline.git' "状态行
Plugin 'https://github.com/vim-scripts/taglist.vim.git'
" Plugin 'https://github.com/vim-scripts/phpfolding.vim.git' "php自动折叠
Plugin 'https://github.com/ervandew/supertab.git' "tag 补全
Plugin 'https://github.com/scrooloose/nerdcommenter.git' "注释代码
Plugin 'https://github.com/Raimondi/delimitMate.git' "括号引号自动成对
Plugin 'https://github.com/craigemery/vim-autotag.git' "自动刷新ctags
Plugin 'https://github.com/scrooloose/syntastic.git' "语法检测
Plugin 'https://github.com/scrooloose/nerdtree.git' "目录树
Plugin 'https://github.com/kien/ctrlp.vim.git' "文件搜索
Plugin 'https://github.com/terryma/vim-multiple-cursors.git' "类Sublime
Plugin 'https://github.com/etaoins/vim-volt-syntax.git' "volt 语法高亮支持
Plugin 'https://github.com/rodjek/vim-puppet.git' "puppet 格式, 高亮支持
Plugin 'https://github.com/StanAngeloff/php.vim.git' "php 5.3-5.6支持
Plugin 'https://github.com/maksimr/vim-jsbeautify.git' "format js css html
Plugin 'https://github.com/bronson/vim-trailing-whitespace.git' "显示尾部的空格为红色
Plugin 'https://github.com/Valloric/YouCompleteMe.git' "自动补全
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" 以上是vundle及插件配置

"开启语法高亮
syntax on
"设置配色模板
" colorscheme desert
" colorscheme molokai
colorscheme jellybeans
"识别文件编码
set fileencodings=ucs-bom,utf-8,latin1
"总是在Vim窗口的右下角显示当前光标的行列信息
set ruler
"在Vim窗口的右下角显示一个完整的命令已经完成的部分
set showcmd
"显示等号
set number
"智能缩进
set smartindent
"自动缩进所使用的空白长度
set shiftwidth=4
"高亮显示匹配的括号
set showmatch
"设置背景色
set background=dark
"定义tab所等同的空格长度
set tabstop=4
"把tabs转换成空格
set expandtab
"高亮度搜寻
set hlsearch
"在键入目标字符串的过程中就同时开始搜索
set incsearch
"设置折叠方式
set foldmethod=marker
"帮助系统设置为中文
set helplang=cn
"文件在Vim之外修改过，自动重新读入
set autoread
"搜索是不区分大小写
set ignorecase
"正则
set magic
"不备份文件
set nobackup
set nowb
"不使用swp文件
set noswapfile
"在breakat字符处而不是最后一个字符处断行
set lbr
"自动缩进
set ai
"禁用自动补全在上方所弹出的那个窗口
set completeopt-=preview
"当自动补全完成时, 自动关闭上面的窗口
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"搜索用grep
set grepprg=/bin/grep\ -nH
set so=7
"支持256色
set t_Co=256
"高亮色
highlight Search guifg=wheat guibg=peru ctermfg=223 ctermbg=172
highlight IncSearch guifg=wheat guibg=peru ctermfg=223 ctermbg=172
"高亮菜单
highlight Pmenu ctermfg=Black ctermbg=Grey
highlight PmenuSel ctermfg=LightBlue ctermbg=DarkBlue

let mapleader = ","
let g:mapleader = ","

" BufExplorer 插件相关配置
map <leader>o :BufExplorer<cr>

" php doc 插件相关配置
nnoremap <C-Y> :call PhpDocSingle()<CR>
vnoremap <C-Y> :call PhpDocRange()<CR>

" nerdtree 插件相关配置
map <leader>xp :NERDTree<cr>

" Ag插件相关配置
" 不输出Ag的错误信息
map <leader>e :Ag -f <C-R>=expand("<cword>")<CR><CR>
map <leader>t <C-]>

"air line
:set laststatus=2

"taglist
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
"打开taglist
map <leader>xt :TlistToggle<cr>

" php fold
let php_folding=0
"autocmd FileType php EnableFastPHPFolds

" php cs fix
"if php-cs-fixer is in $PATH, you don't need to define line below
" let g:php_cs_fixer_path = "~/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar
let g:php_cs_fixer_level = "all"                  " which level ?
let g:php_cs_fixer_config = "default"             " configuration
let g:php_cs_fixer_php_path = "php"               " Path to PHP
" If you want to define specific fixers:
" let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
" let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.
nnoremap <leader>xfd :call PhpCsFixerFixDirectory()<CR>
nnoremap <leader>xff :call PhpCsFixerFixFile()<CR><cr>:e %<cr>

"namespace
inoremap <Leader>u <C-O>:call PhpInsertUse()<CR>
noremap <Leader>u :call PhpInsertUse()<CR>
inoremap <Leader>U <C-O>:call PhpExpandClass()<CR>
noremap <Leader>U :call PhpExpandClass()<CR>

" crtlp
let g:ctrlp_follow_symlinks=1

" vim-jsbeautify
map <leader>xfh :call HtmlBeautify()<cr>
map <leader>xfj :call JsBeautify()<cr>

" ycm complete
" 自动提示php与函数与关键字
let g:ycm_seed_identifiers_with_syntax=1
"选择后自动关于窗口
"let g:ycm_autoclose_preview_window_after_completion=1

" tab
map <leader>g gt




" ===================自定义的map key=====================
nmap <leader>w :w!<cr>
" 方便窗口间设置
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" 方便退出
map <leader>q :q<ESC>
" 方便切屏
map <leader>s :sp<cr><c-j>
" 执行当前php文件
map <leader>r :!php %<cr>
" phpunit执行当前php文件
map <leader>f :!phpunit %<cr>
" 检查当前php方法
map <cr> :!php -l %<cr>
" 搜索
map <space> /
" 到行首
map 0 ^
" 去除高亮
map <leader><cr> :noh<cr>
" 高亮光标所在的当前单词
map <leader>d #*
" php error_log 方便高度
map <leader>k yawoerror_log(print_r("\n<esc>pa=error::jx===>>".__CLASS__."->".__FUNCTION__."<<========================>>>>>\n", true), 3, "/tmp/jx.log");<esc>oerror_log(print_r($<esc>pa, true), 3, "/tmp/jx.log");<esc>,w
" 是否显示行号切换, 方便复制
 nnoremap <F4> :set nonumber!<CR>:set foldcolumn=0<CR>
" 方便粘贴
map <leader>i :set paste!<CR>i
" 快速打开tree与taglist 与 添加cscope nerdtree相关设置
command! I normal <leader>xp<leader>xt<c-l>
map <F2> :NERDTreeToggle<CR>" NERDTree 插件
nmap 0 gt
nmap 9 gT
map <C-w> <C-w>w
:set pastetoggle=<F3>

nmap <leader>d avar_dump();<ESC>hi
