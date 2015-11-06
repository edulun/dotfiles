set noswapfile 

set backupdir=/tmp
set nobackup

filetype off

set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim' 

Plugin 'ludovicchabant/vim-gutentags'

Plugin 'mustache/vim-mustache-handlebars'

" Setting colorschemes
Plugin 'flazz/vim-colorschemes'

" Decent defaults
Plugin 'tpope/vim-sensible'

" Quick commenting code <>cc
Plugin 'scrooloose/nerdcommenter'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" File navigation
Plugin 'kien/ctrlp.vim'

Plugin 'scrooloose/syntastic'

" Bracketed pasting, so pasting code doesn't mess up the indentation.
Plugin 'conradirwin/vim-bracketed-paste'

Plugin 'bling/vim-airline'

Plugin 'bronson/vim-trailing-whitespace'

call vundle#end()

colorscheme wombat
let mapleader = "\<Space>"

"Copy/paste from clipboard
vmap <Leader>y "*y
vmap <Leader>d "*d
nmap <Leader>p "*p
nmap <Leader>P "*P
vmap <Leader>p "*p
vmap <Leader>P "*P""""""

"Map cmdline to ;
:nmap ; :

"Open file
nnoremap <Leader>o :CtrlP<CR>

"Toggle lineNumber
nnoremap <Leader>l :set invnumber<CR>

" Open ctrlp in buffer mode
nnoremap <Leader>p :CtrlPBuffer<CR>

inoremap jk <esc>
inoremap kj <esc>

set splitbelow
set splitright


" 1 tab == 2 spaces
set expandtab
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set si "Smart indent
set wrap "Wrap lines

"let g:hardtime_default_on = 1

let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#fnamemod = ':t'

nnoremap <A-n> :bnext<CR>:redraw<CR>:ls<CR>
nnoremap <A-p> :bprevious<CR>:redraw<CR>:ls<CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/dist/*,*/node_modules/*,*/locale/*,*/reports/*,*/bower_components/*
