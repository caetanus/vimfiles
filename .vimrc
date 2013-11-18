noremap <F3> :let @/=''<CR>

" Fast close

map <C-Q> :q <CR>
nnoremap <C-Q> :q <CR>
imap <C-Q> <ESC> :q<CR> i
vmap <C-Q> <ESC> :q<CR> v

" Fuzzy Finder

map <C-K> :FufFile<CR>
imap <C-K> <ESC>:FufFile<CR> i
vmap <C-K> <ESC>:FufFile<CR> v

" Copy
noremap <C-Insert> "+y<CR>
nmap <leader>y "+2yy<CR>
vmap <leader>y "+2yy<CR>

" Paste
noremap <S-Insert> "+gP<CR>
nmap <leader>p "+p
vmap <leader>p "+p

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

" colorscheme
colorscheme xoria256
" show linenumbers
set smarttab
set expandtab
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start
set autoindent

" Paste functions
imap <S-Insert> <ESC> :set paste <CR> "+gP <CR> :set nopaste <CR> i
nmap <S-Insert> <ESC> :set paste <CR> "+gP <CR> :set nopaste <CR> i
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
:au FocusLost * :set nu
:au FocusGained * : set rnu

function! NumberToggle()
    if(&relativenumber == 1)
        set nu
    else
        set rnu
    endif
endfunc

nnoremap <C-F12> :call NumberToggle() <cr>
map <C-F12> :call NumberToggle() <cr>


set ttyfast

set tabpagemax=15
nnoremap <A-PageUp> <Esc>:tabnext<CR>
nnoremap <C-t> <Esc>:tabnew<CR>
nnoremap <C-PageDown> <Esc>:tabprevious<CR>

" buffer navigating
nnoremap <C-S-Left> <Esc>:bp<CR>
nnoremap <C-S-Right> <Esc>:bn<CR>

set mouse=a
au Filetype python source ~/.vim/pythonvimrc

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


" 80 characters line
let &colorcolumn=join(range(81,999),",")
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
Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non-GitHub repos
Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
Bundle 'git@github.com:Lokaltog/vim-powerline.git'

Bundle 'git@github.com:tomasr/molokai.git'

filetype plugin indent on     " required!


" powerline vim
"
colorscheme molokai
let g:Powerline_symbols = 'fancy'

let g:rehash256 = 1
