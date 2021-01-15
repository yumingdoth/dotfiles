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
" Automatic installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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

Plug 'honza/vim-snippets'

Plug 'terryma/vim-multiple-cursors'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'mhinz/vim-startify'

Plug 'mbbill/undotree'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'jiangmiao/auto-pairs'

Plug 'preservim/tagbar'

Plug 'Yggdroot/indentLine' 

Plug 'airblade/vim-gitgutter'

Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()



" key map start



" 平滑滚屏
:map <C-U> <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>
:map <C-D> <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>
" NERDTree
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

" undotree
nnoremap <F5> :UndotreeToggle<CR>

" tagbar
nmap <F8> :TagbarToggle<CR>

" coc-yank
nnoremap <silent> <LEADER>y  :<C-u>CocList -A --normal yank<cr>

" coc 
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)



" key map end 


" other settings start


" coc settings
let g:coc_global_extensions = [
    \ 'coc-css',
    \ 'coc-clangd',
    \ 'coc-explorer',
    \ 'coc-html',
    \ 'coc-json',
    \ 'coc-lists',
    \ 'coc-pyright',
    \ 'coc-snippets',
    \ 'coc-sql',
    \ 'coc-vetur',
    \ 'coc-vimlsp',
    \ 'coc-xml',
    \ 'coc-yaml',
    \ 'coc-yank']


" TextEdit might fail if hidden is not set.
set hidden
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
" 开启airline标签页显示
let g:airline#extensions#tabline#enabled = 1
" airline主题
let g:airline_theme='gruvbox'
" [the reason we are using autocmd is that, vim always read .vimrc file first
" and after that starts to load plugins, so in this case, we use autocmd
" vimenter, to be sure that all plugins are loaded completely and then use
" gruvbox]
autocmd vimenter * ++nested colorscheme gruvbox
" path formatter 
let g:airline#extensions#tabline#formatter = 'unique_tail'


let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" timeoutlen is used for mapping delays, 
" and ttimeoutlen is used for key code delays
set timeoutlen=1000 ttimeoutlen=50

" other settings end

exec 'nohlsearch'
