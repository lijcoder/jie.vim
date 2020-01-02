let g:skip_defaults_vim = 0    " not load  $VIMRUNTIME/defaults.vim

""""""""""""""""""""""""""""""""""""""""""
" vim-plug 管理插件#开始
""""""""""""""""""""""""""""""""""""""""""
call plug#begin('/etc/vim/vim_plug')

Plug 'lijcoder/jie.vim'
" Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'tomasr/molokai', { 'as': 'molokai' }
Plug 'lifepillar/vim-solarized8', { 'as': 'solarized8' }
" Plug 'itchyny/lightline.vim'
" Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-scripts/taglist.vim'
Plug 'brookhong/cscope.vim'
" Plug 'asenac/vim-opengrok'


call plug#end()
""""""""""""""""""""""""""""""""""""""""""
" vim-plug 管理插件#结束
""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""
" 配置函数封装#开始
""""""""""""""""""""""""""""""""""""""""""
function! MyStatusline()
    return '[%{jieFunc#mode()}]%t%m%h%r%w%=[%p%%,%lL,%cC,%LALL]%y[%{&fileformat}][%{&fileencoding}]'
endfunction
""""""""""""""""""""""""""""""""""""""""""
" 配置函数封装#结束
""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""
" SET 参数配置#开始
""""""""""""""""""""""""""""""""""""""""""
set nocompatible        " 若要兼容vi, 设置 "compatible"
set wildmenu            " display completion matches in a status line
set noerrorbells        " 出错时, 不发出响声
set history=1000        " 
set timeout             " for mappings
set timeoutlen=1000     " 
set ttimeout            " time out for key codes
set ttimeoutlen=10      " wait up to 100ms after Esc for special key

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

" VIM 零时文件处理
set nobackup            " 不创建备份文件
set noswapfile          " 不创建交换文件, 当 VIM 异常关闭时, 用于恢复文件

" 高亮、主题配置
syntax on               " 
set t_Co=256
set background=dark     " 
colorscheme solarized8_flat

set showcmd             " Show (partial) command in status line.
set showmode            " 命令行显示vim当前模式
set showmatch           " Show matching brackets.
set ignorecase          " Do case insensitive matching
set smartcase           " Do smart case matching
set autowrite           " Automatically save before commands like :next and :make
set autoread            " 打开文件监视, 如果在编辑时文件被外部程序改变, 就会发出提示
set hidden              " Hide buffers when they are abandoned
set mouse=              " Enable mouse usage (all modes)
set number              " 

" 查找配置
set incsearch           " Incremental search
set hlsearch            " 
set ignorecase          " 忽略搜索大小写
set nowrapscan          " 不循环搜索

" 状态栏配置
set laststatus=2        " 展示状态栏
set statusline=%!MyStatusline()
set ruler               " 

" 编辑文件编码、格式等配置
set fileformat=unix     " 设置文件的换行符为 "\n"
set shiftwidth=4        " 
set softtabstop=4       " 
set tabstop=4           " 
retab 4                 " 
set expandtab           " 
set autoindent          " 
set linebreak           " 
""""""""""""""""""""""""""""""""""""""""""
" SET 参数配置#结束
""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""
" opengrok 源码阅读配置#开始
""""""""""""""""""""""""""""""""""""""""""
" let g:opengrok_jar = '/root/tomcat/opengrok/lib/opengrok.jar'
" let g:opengrok_ctags = '/usr/local/my_bin/ctags'
" let g:opengrok_config_file = '/root/tomcat/opengrok_workspaces/configuration.xml'
""""""""""""""""""""""""""""""""""""""""""
" opengrok 源码阅读配置#结束
""""""""""""""""""""""""""""""""""""""""""
