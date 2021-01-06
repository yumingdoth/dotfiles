" .vimrc


set nocompatible

set termencoding=utf-8
" 开启行号显示
set number 
set relativenumber
" 高亮光标所在行
set cursorline
hi CursorLine term=bold cterm=bold ctermbg=237
" 开启语法高亮
syntax on
" 文件编码
set encoding=utf-8 
" 终端配色
set background=dark
colorscheme gruvbox
" tab页颜色
hi TabLineFill ctermbg=237 ctermfg=15
" 搜索高亮颜色
hi Search ctermfg=245

" 自动缩进
set smartindent
" 缩进操作 ( << 和 >> )时缩进的列数
set shiftwidth=4
" 使用空格替代Tab键
set expandtab
" Tab输入的空格数
set tabstop=4
" 关闭softtabstop
set softtabstop=0

" 插入括号是匹配另外一个 
set showmatch
" 高亮搜索
set hlsearch
" 搜索输入时即时匹配关键词 
set incsearch

" 开启自动识别文件类型，并根据文件类型加载不同的插件和缩进规则
filetype plugin indent on

"设置tab的顶部标签栏，0为隐藏，1为新建显示，2为始终显示，相关tab命令
set showtabline=1
" 显示命令
set showcmd
" 显示提示列表
set wildmenu
" 设置当前行到屏幕上下边缘的距离
set scrolloff=5
" 记录光标在文件的位置，重新打开定位到该位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" 插件
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Plug 'SirVer/ultisnips' 
" Plug 'honza/vim-snippets'

Plug 'terryma/vim-multiple-cursors'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'mhinz/vim-startify'

Plug 'mbbill/undotree'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Initialize plugin system
call plug#end()




" 平滑滚屏
:map <C-U> <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>
:map <C-D> <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>
" NERDTree
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

" undotree
nnoremap <F5> :UndotreeToggle<CR>

" coc
let g:coc_global_extensions = [
    \ 'coc-css',
    \ 'coc-clangd',
    \ 'coc-explorer',
    \ 'coc-html',
    \ 'coc-json',
    \ 'coc-lists',
    \ 'coc-python',
    \ 'coc-snippets',
    \ 'coc-sql',
    \ 'coc-vetur',
    \ 'coc-vimlsp',
    \ 'coc-xml',
    \ 'coc-yaml',
    \ 'coc-yank']


exec 'nohlsearch'
