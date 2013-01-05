Welcome to my vim files.
=======================

I most use this files to python editing.

to take full advantage of this, make sure that exuberant-ctags are instaled.


New to Vim?
-----------

read this tutorials: 

[Vim Básico - Aurelio](http://aurelio.net/vim/vim-basico.txt)

[Vim Intermediário - Aurelio](http://aurelio.net/vim/vim-medio.txt)

[Vim Avançado - Aurelio](http://aurelio.net/vim/vim-avancado.txt)



Instaling:
----------

clone this repository to your home, then:

ln -s ~/vimfiles/.vim  ~ && ln -s ~/vimfiles/.vimrc ~ 

commands:
---------
### Symbol Navigation:

F9 to open/close the symbol navigator

### completion

ctrl-x-o -> to complete any function showing documentation of your python library

ctrl-n -> complete any phrase typed before in some buffer.

### tabs
ctrl-t -> creates a new tab

ctrl-w -> closes current tab

ctrl-pgup -> navigates to the next tab

ctrl-pgdwn -> navigates to the previous tab

## copy and paste

shift-insert -> makes a paste

shitf-delete -> makes a cut

ctrl-insert -> makes a copy

## line-endings

ctrl-f7 -> converts dos to unix line ending.


## xml facilities

if you have xmllint instaled, any xml file will be indented when oppened.


## splits

\sw  Left -> creates a split to left (the same to the others navigation keys)

\s  Left -> moves to the split at left (the same to the others navigation keys)

## snippets

ipd Tab -> import ipdb; ipdb.set_trace()

\#! Tab -> inserts a shebang

\#*- Tab -> inserts # -*- conding: utf-8 -*-

ifmain Tab -> insert if __name__ == '__main__': ...

cls Tab -> class skeleton

def Tab -> def skeleton
