set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
if has("win32")
  set rtp+=~/vimfiles/bundle/Vundle.vim
  let path='~/vimfiles/bundle'
  call vundle#begin(path)
else
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
endif

set noswapfile 
set nobackup

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim' 

" Setting colorschemes
Plugin 'flazz/vim-colorschemes'

" Decent defaults
Plugin 'tpope/vim-sensible'

" Tagbar, mapped to <leader>t
Plugin 'majutsushi/tagbar'
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

" Less syntax
Plugin 'groenewege/vim-less'

Plugin 'scrooloose/syntastic'

Plugin 'bkad/CamelCaseMotion'

call vundle#end()            " required

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

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

