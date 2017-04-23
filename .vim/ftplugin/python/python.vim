" setlocal equalprg=yapf

let g:vim_isort_map = '<leader>i'

let g:vimpy_prompt_resolve = 1
let g:vimpy_remove_unused = 1
let g:yapf_style = "pep8"
nnoremap <leader>I :VimpyCheckLine <CR>
nnoremap <leader>i :Isort <CR>
nnoremap <leader>f :Yapf <CR>
nnoremap <silent> <leader>F :VimpyCheckLine <CR> :Isort <CR> :Yapf <CR>


" Jedi settings

imap <C-LeftMouse> <ESC> <LeftMouse> \g i
nmap <C-LeftMouse> <LeftMouse> \g

let g:jedi#use_tabs_not_buffers=0

autocmd BufWritePost *.py call Flake8()
"let g:flake8_ignore="E501,W293"
"let g:flake8_builtins="_,apply"
"let g:flake8_max_complexity=10
"let g:flake8_max_line_length=120

