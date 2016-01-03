set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tomasr/molokai.git'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'taglist.vim'
Plugin 'The-NERD-tree'
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'davidhalter/jedi.git'


Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

Plugin 'kien/ctrlp.vim.git'

Plugin 'bling/vim-airline.git'

Plugin 'airblade/vim-gitgutter.git' " add + or - for lines added or removed when using git

Plugin 'vim-clang'


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


colorscheme molokai

syntax on


" my vim-ishs

" tabs
"
set expandtab
set shiftwidth=4
set softtabstop=4
set smarttab
set autoindent
set smartindent
set backspace=indent,eol,start
set sm

" 80 columns color
"
let &colorcolumn=join(range(99,999),",")
hi ColorColumn guibg=#2d2d2d ctermbg=235
set cursorline
set fillchars=vert:\|
set nowrap

" numbers
set nu


" mouse

set mouse=a


" ctrlp

let g:ctrlp_map = '<c-k>'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.db

" clipboard

set clipboard=unnamedplus
map <leader>Y "+y
map <leader>P <ESC> set paste <cr> i "+p <CR> set nopaste <CR>
    

" no folds
"
set foldlevelstart=99


" search
"
set hlsearch
set incsearch
set history=1000
" remove search highlight
noremap <silent> <F3> :let @/="" <CR>  

" ruler
"
set ruler
set laststatus=2
set title
set showmode


" taglists, nerdtree
"

nnoremap <silent> <F9> :TlistToggle<CR>
nnoremap <silent> <F12> :NERDTreeToggle<CR> 

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeWinPos = "right"


" xml auto indentation
au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"


" pyflakes

let g:PyFlakeDisabledMessages = 'E501'

let g:PyFlakesMaxLineLength = 99

let g:PyFlakeCheckers = 'pep8,mccabe'

nnoremap <silent> <F8> :PyFlakeAuto <CR>

filetype plugin indent on " required!


" airline

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'


let g:rehash256 = 1


" wild ignore
"
set wildignore+=*/build/bdist*,*/build/lib.*,*/dist/*,*/docs/*,*.egg-info,*.sw*,*.egg,*.exe,*.pyc,*.pyo,*.pyd,*.dll,*.so



" Jedi settings

imap <C-LeftMouse> <ESC> <LeftMouse> \g i
nmap <C-LeftMouse> <LeftMouse> \g

let g:jedi#use_tabs_not_buffers=0



" gui 
"
if has("gui")

    set guifont=Monospace\ 12

    set guioptions-=M  " remove menubar
    set guioptions-=m  " remove menubar
    set guioptions-=T  " remove toolbar
    nnoremap <C> +
endif

" split separator
set fillchars+=vert:\ 


" change gui font size 
"
nnoremap <silent> <C-Kplus> :call gui_font_size#ChangeFontSize(1) <CR>
nnoremap <silent> <C-Kminus> :call gui_font_size#ChangeFontSize(-1) <CR>

nnoremap <silent> <C-ScrollWheelUp> :call gui_font_size#ChangeFontSize(0.25) <CR>
nnoremap <silent> <C-ScrollWheelDown> :call gui_font_size#ChangeFontSize(-0.25) <CR>
