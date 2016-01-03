function! gui_font_size#ChangeFontSize(value)

python << endpython

import vim
value = float(vim.eval("a:value"))
font = vim.eval("&guifont")
font = font.split()
size = float(font[-1])
font = " ".join(font[:-1])
vim.command(":set guifont=%s\ %s" % (font, size + value))

endpython
endfunction

