
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
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" non-GitHub repos

Bundle 'git@github.com:tomasr/molokai.git'
Bundle 'git@github.com:tpope/vim-fugitive.git'

Bundle 'git@github.com:kien/ctrlp.vim.git'
Bundle 'git@github.com:bling/vim-airline.git'
Bundle 'git@github.com:airblade/vim-gitgutter.git'
Bundle 'git@github.com:mhinz/vim-signify.git'

Bundle 'git@github.com:klen/python-mode.git'


