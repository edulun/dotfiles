" Use Vim settings, rather then Vi settings. This setting must be as early as
" possible, as it has side effects.
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
if has("win32")
  set rtp+=~/vimfiles/bundle/Vundle.vim/
  let path='~/vimfiles/bundle'
  call vundle#begin(path)
else
  set rtp+=~/.vim/bundle/Vundle.vim/
  call vundle#begin()
endif

set backupdir=~/.vimtmp,.
set directory=~/.vimtmp,.

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Setting colorschemes
Plugin 'flazz/vim-colorschemes'
Plugin 'godlygeek/csapprox'
" Decent defaults
Plugin 'tpope/vim-sensible'

" Tagbar, mapped to <leader>t
Plugin 'majutsushi/tagbar'
Plugin 'takac/vim-hardtime'

Plugin 'takac/vim-hardtime'

" NERDtree, mapped to <leader>n
Plugin 'scrooloose/nerdtree'

" Quick commenting code <>cc
Plugin 'scrooloose/nerdcommenter'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" Easy moving around
Plugin 'Lokaltog/vim-easymotion'

"Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
"Plugin 'honza/vim-snippets'
"Plugin 'Townk/vim-autoclose'

call vundle#end()            " required

let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
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

"Map cmdline to :
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
inoremap kj <esc>

set splitbelow
set splitright


" 1 tab == 2 spaces
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

"Go to end of paste 
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

:HardTimeOn
