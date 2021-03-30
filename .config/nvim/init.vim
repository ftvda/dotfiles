set fenc=utf-8
set encoding=utf-8

set number
set shiftwidth=4
set tabstop=4
set ambiwidth=double
if !isdirectory(expand("$XDG_CACHE_HOME/nvim/undodir"))
	call mkdir(expand("$XDG_CACHE_HOME/nvim/undodir"), "p")
endif
set viminfo+=n~/.cache/nvim/viminfo
set undofile 
set undodir=$XDG_CACHE_HOME/nvim/undodir
colorscheme desert

noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

"html tag
autocmd Filetype html inoremap ;com <!--  --><Esc>3hi
autocmd Filetype html inoremap ;1 <h1></h1><Esc>4hi
autocmd Filetype html inoremap ;2 <h2></h2><Esc>4hi
autocmd Filetype html inoremap ;3 <h3></h3><Esc>4hi
autocmd Filetype html inoremap ;4 <h4></h4><Esc>4hi
autocmd Filetype html inoremap ;5 <h5></h5><Esc>4hi
autocmd Filetype html inoremap ;6 <h6></h6><Esc>4hi
autocmd Filetype html inoremap ;pa <p><Return><Return></p><Esc>ki
autocmd Filetype html inoremap ;b <b></b><Esc>3hi
autocmd Filetype html inoremap ;i <i></i><Esc>3hi
autocmd Filetype html inoremap ;pre <pre><Return><Return></pre><Esc>ki
autocmd Filetype html inoremap ;cd <code><Return><Return></code><Esc>ki
autocmd Filetype html inoremap ;code <code><pre><Return><Return></pre></code><Esc><<ki

"xml tag
autocmd Filetype xml inoremap ;com <!--  --><Esc>3hi
