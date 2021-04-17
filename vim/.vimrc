" .vimrc


set nocompatible

" line no
set number 
" set relativenumber
" highlight current line
set cursorline
hi CursorLine term=bold cterm=bold ctermbg=237
" syntax
syntax on
" encoding
set encoding=utf-8 
set termencoding=utf-8
" bg
set background=dark
" highlight search
hi Search ctermfg=245
" noswapfile
set noswapfile
" auto indent
set smartindent
" indent columns (when using >> or <<)
set shiftwidth=4
" replace tab with space
set expandtab
" space count
set tabstop=4
" 关闭softtabstop
set softtabstop=0

" showmatch
set showmatch
" highlight
set hlsearch
" highlight on typing
set incsearch

" filetype
filetype plugin indent on

"top tab，0:hide，1:show new tab，2:always
set showtabline=1
" showcmd
set showcmd
" show tip
set wildmenu
" line count to edge
set scrolloff=5
" remember cursor position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" plugin
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" On-demand loading
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

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

" Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'}

" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go'  }

" Initialize plugin system
call plug#end()



" key map start



" smooth scroll
:map <C-U> <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>
:map <C-D> <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>
" NERDTree
nnoremap <F3> :NERDTreeMirror<CR>
nnoremap <F3> :NERDTreeToggle<CR>

" undotree
nnoremap <F5> :UndotreeToggle<CR>

" tagbar
nmap <F8> :TagbarToggle<CR>

" coc-yank
nnoremap <silent> <LEADER>y  :<C-u>CocList -A --normal yank<cr>

" coc 
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

"GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" cancel hignlight note: in wls2, using this will cause a problem, enter
" replace mode when open vim
" nnoremap <C-[> <C-[>:noh<CR>
nnoremap <C-L> <C-L>:noh<CR>


" key map end 


" other settings start


" coc settings
let g:coc_global_extensions = [
    \ 'coc-css',
    \ 'coc-clangd',
    \ 'coc-explorer',
    \ 'coc-git',
    \ 'coc-go',
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
" enable airline tab
let g:airline#extensions#tabline#enabled = 1
" [the reason we are using autocmd is that, vim always read .vimrc file first
" and after that starts to load plugins, so in this case, we use autocmd
" vimenter, to be sure that all plugins are loaded completely and then use
" gruvbox]
autocmd vimenter * ++nested colorscheme gruvbox
" airline theme
let g:airline_theme='gruvbox'
" path formatter 
let g:airline#extensions#tabline#formatter = 'unique_tail'

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" timeoutlen is used for mapping delays, 
" and ttimeoutlen is used for key code delays
set timeoutlen=1000 ttimeoutlen=50

" Strange character (>4;2m) in vim
let &t_TI = ""
let &t_TE = ""

" other settings end
