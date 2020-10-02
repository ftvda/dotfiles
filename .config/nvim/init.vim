set fenc=utf-8
set encoding=utf-8

set number
set shiftwidth=4
set tabstop=4
set foldmethod=indent
set relativenumber
colorscheme desert

noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

autocmd Filetype html inoremap ;1 <h1></h1><++><Esc>8hi
autocmd Filetype html inoremap ;2 <h2></h2><++><Esc>8hi
autocmd Filetype html inoremap ;3 <h3></h3><++><Esc>8hi
autocmd Filetype html inoremap ;4 <h4></h4><++><Esc>8hi
autocmd Filetype html inoremap ;5 <h5></h5><++><Esc>8hi
autocmd Filetype html inoremap ;6 <h6></h6><++><Esc>8hi
autocmd Filetype html inoremap ;p <p></p><++><Esc>7hi
autocmd Filetype html inoremap ;b <b></b><++><Esc>7hi
autocmd Filetype html inoremap ;i <i></i><++><Esc>7hi
autocmd Filetype html noremap <Space><Space> /<++><Enter>"_4dla
