set nocompatible
filetype off

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

call vundle#begin()

set noswapfile 
set nobackup

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim' 

" Setting colorschemes
Plugin 'flazz/vim-colorschemes'

" Decent defaults
Plugin 'tpope/vim-sensible'

" Life is suffering
Plugin 'takac/vim-hardtime'

" NERDtree, mapped to <leader>n
Plugin 'scrooloose/nerdtree'

" Quick commenting code <>cc
Plugin 'scrooloose/nerdcommenter'

" Git wrapper
Plugin 'tpope/vim-fugitive'

Plugin 'kien/ctrlp.vim'

Plugin 'scrooloose/syntastic'

Plugin 'bkad/CamelCaseMotion'

" Bracketed pasting, so pasting code doesn't mess up the indentation.
Plugin 'conradirwin/vim-bracketed-paste'

call vundle#end()

let mapleader = "\<Space>"
colorscheme wombat256

"Saving
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

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
"Toggle tagbar
nnoremap <Leader>t :TagbarToggle<CR>
"Toggle nerdtree
nnoremap <Leader>n :NERDTreeToggle<CR>
"Toggle lineNumber
nnoremap <Leader>l :set invnumber<CR>

inoremap jk <esc>

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

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

