nnoremap <leader>:call TrimWhiteSpace()<cr>:let @/=''<CR>

" Copy
noremap <C-Insert> "+y<CR>

" Paste
noremap <S-Insert> "+gP<CR>

" Cut
noremap <C-Delete> "+x<CR>

map <C-s> :w<CR>
imap <C-s> <Esc> :w<CR>i
map <C-F7> :update <CR> :e ++ff=dos <CR> :setlocal ff=unix <CR> :w
map <C-w> :tabclose<CR>

" colorscheme
colorscheme desert 
" show linenumbers
set smarttab
set expandtab
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start
set autoindent

" Paste functions
imap <S-Insert> <ESC> :set paste <CR> "*p <CR> :set nopaste <CR> i
nmap <S-Insert> <ESC> :set paste <CR> "*p <CR> :set nopaste <CR> i
vmap <C-Insert> "+y
vmap <C-Delete> "+y <CR> d
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
set nu

set ttyfast

set tabpagemax=15
nnoremap <A-PageUp> <Esc>:tabnext<CR>
nnoremap <C-t> <Esc>:tabnew<CR>
nnoremap <C-PageDown> <Esc>:tabprevious<CR>

set mouse=a
au Filetype python source ~/.vim/pythonvimrc
