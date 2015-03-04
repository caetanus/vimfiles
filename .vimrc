" Fuzzy Finder

map <C-K> :CtrlP<CR>
imap <C-K> <ESC>:CtrlP<CR> i
vmap <C-K> <ESC>:CtrlP<CR> v

" Copy
noremap <C-Insert> "+y
nmap <leader>y "+2yy
vmap <leader>y "+2yy


" Cut
noremap <C-Delete> "+x<CR>
nmap <leader>d "+dd
vmap <leader>d "+dd

" reload current file
map <C-F5> :edit! <CR>
map <F9> :TlistToggle<CR>
imap <F9> <Esc> :TlistToggle <CR><ESC> i
vmap <F9> <Esc> :TlistToggle <CR> <ESC> v

map <C-s> :w<CR>
imap <C-s> <Esc> :w<CR>i
map <C-F7> :update <CR> :e ++ff=dos <CR> :setlocal ff=unix <CR> :w
map <F9> :TlistToggle <CR>
imap <F9> <Esc> :TlistToggle <CR> i
vmap <F9> <Esc> :TlistToggle <CR> v

" show linenumbers
set smarttab
set expandtab
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start
set autoindent

" Paste functions
imap <S-Insert> <ESC> "+gP i
map <leader>p :set paste <CR> <ESC> "+gP <ESC> :set nopaste
nmap <S-Insert> <ESC> "+gP <CR> i
vmap <C-Insert> "+y
vmap <C-p> "+y
vmap <C-Delete> "+x
nmap <C-Delete> "+yy <CR> dd
" autosave when changing buffer
imap <S-END> <ESC> V <END>
set autowrite
set nobackup

set hlsearch
set incsearch
set sm
syntax on


set ruler
set showmode
set history=1000

set ls=2
set title

" relative line numbers
au InsertEnter * call RelativeNumber()
au InsertLeave * call NoRelativeNumber()

function! RelativeNumber()
    set rnu
endfunc

function! NoRelativeNumber()
    set norelativenumber
    set nu
endfunc

function! NumberToggle()
    if(&relativenumber == 1)
        call NoRelativeNumber()
    else
        call RelativeNumber()
    endif
endfunc


nnoremap <C-F12> :call NumberToggle() <cr>
map <C-F12> :call NumberToggle() <cr>
set rnu


set ttyfast

set tabpagemax=15
nnoremap <A-PageUp> <Esc>:tabnext<CR>
nnoremap <C-PageUp> <Esc>:bn<CR>
nnoremap <C-t> <Esc>:tabnew<CR>
nnoremap <A-PageDown> <Esc>:tabprevious<CR>
nnoremap <C-PageDown> <Esc>:bp<CR>

" buffer navigating
nnoremap <C-S-Left> <Esc>:bp<CR>
nnoremap <C-S-Right> <Esc>:bn<CR>

set mouse=a
" au Filetype python source ~/.vim/pythonvimrc

" -------------------------------------------------------------
" splits

"window
nmap <leader>sw<left>  :topleft  vnew<CR>
nmap <leader>sw<right> :botright vnew<CR>
nmap <leader>sw<up>    :topleft  new<CR>
nmap <leader>sw<down>  :botright new<CR>
map <leader>w :w <CR>
"navigate into splits

nmap <leader>s<left>   :wincmd h<CR>
nmap <leader>s<right>  :wincmd l<CR>
nmap <leader>s<up>     :wincmd k<CR>
nmap <leader>s<down>   :wincmd j<CR>

" xml auto indentation
au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"


" 100 characters line
let &colorcolumn=join(range(99,999),",")
hi ColorColumn guibg=#2d2d2d ctermbg=235

" highlight current line
set cursorline


" vsplit style
set fillchars=vert:\│

" no wraplines
set nowrap


" NERDTree
let g:NERDTreeWinPos = "right"
imap <F12> <ESC> :NERDTreeToggle <CR> i
map <F12> :NERDTreeToggle <CR>
vmap <F12> <ESC> :NERDTreeToggle <CR> v

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufRead *.vala,*.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala,*.vapi setfiletype vala
autocmd BufWritePre *.py :%s/\s\+$//e

au BufNew,BufRead *.pi                  setf python

" Vundle setup!
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Plugin 'davidhalter/jedi-vim'
" Plugin 'klen/python-mode'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos

Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/taglist.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/OmniCppComplete'


Plugin 'FuzzyFinder'
" non-GitHub repos

Plugin 'tomasr/molokai.git'
Plugin 'tpope/vim-fugitive.git'

Plugin 'kien/ctrlp.vim.git'
Plugin 'rking/ag.vim'
Plugin 'bling/vim-airline.git'
Plugin 'airblade/vim-gitgutter.git' " add + or - for lines added or removed when using git

Plugin 'burnettk/vim-angular'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

Plugin 'andviro/flake8-vim'

Plugin 'jelera/vim-javascript-syntax'
Plugin 'moll/vim-node'




" pyflakes

let g:PyFlakeDisabledMessages = 'E501'

let g:PyFlakesMaxLineLength = 99

let g:PyFlakeCheckers = 'pep8,mccabe'

nnoremap <silent> <F8> :PyFlakeAuto <CR>

filetype plugin indent on     " required!

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
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

set wildignore+=*/build/bdist*,*/build/lib.*,*/dist/*,*/docs/*,*.egg-info,*.sw*,*.egg,*.exe,*.pyc,*.pyo,*.pyd,*.dll,*.so


" ctags c++
" configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags/stl
set tags+=~/.vim/tags/qt4
" build tags of your own project with Ctrl-F12
map <C-S-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview
colorscheme molokai


" Jedi settings

imap <C-LeftMouse> <ESC> <LeftMouse> \g i
nmap <C-LeftMouse> <LeftMouse> \g

let g:jedi#use_tabs_not_buffers=0

noremap <silent> <F3> :let @/="" <CR>
