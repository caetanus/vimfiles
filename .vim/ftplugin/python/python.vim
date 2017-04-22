" setlocal equalprg=yapf

let g:vim_isort_map = '<leader>i'

let g:vimpy_prompt_resolve = 1
let g:vimpy_remove_unused = 1
let g:yapf_style = "pep8"
nnoremap <leader>I :VimpyCheckLine <CR>
nnoremap <leader>i :Isort <CR>
nnoremap <leader>y :Yapf <CR>

" wild ignore
"
set wildignore+=*/build/bdist*,*/build/lib.*,*/dist/*,*/docs/*,*.egg-info,*.sw*,*.egg,*.exe,*.pyc,*.pyo,*.pyd,*.dll,*.so,*.wpr,*.wpu,*.jpg,*.png,*/__pycache__/*

" Jedi settings

imap <C-LeftMouse> <ESC> <LeftMouse> \g i
nmap <C-LeftMouse> <LeftMouse> \g

let g:jedi#use_tabs_not_buffers=0

