set noswapfile

set backupdir=/tmp
set nobackup

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Setting colorschemes
Plugin 'flazz/vim-colorschemes'

" Decent defaults
Plugin 'tpope/vim-sensible'

" Quick commenting code <>cc
Plugin 'scrooloose/nerdcommenter'

" File navigation
Plugin 'kien/ctrlp.vim'

Plugin 'pangloss/vim-javascript'

" Git wrapper
Plugin 'tpope/vim-fugitive'


Plugin 'scrooloose/syntastic'

" Bracketed pasting, so pasting code doesn't mess up the indentation.
Plugin 'conradirwin/vim-bracketed-paste'

Plugin 'edulun/vim-jsx'

Plugin 'bling/vim-airline'

Plugin 'bronson/vim-trailing-whitespace'


Plugin 'shougo/deoplete.nvim'
call vundle#end()

colorscheme wombat
let mapleader = "\<Space>"
" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

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

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

nnoremap <A-n> :bnext<CR>:redraw<CR>:ls<CR>
nnoremap <A-p> :bprevious<CR>:redraw<CR>:ls<CR>


noremap <Leader>w :w<CR>
noremap <Leader>t :split term://bash\ -login<CR>

let g:deoplete#enable_at_startup = 1

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/dist/*,*/node_modules/*,*/reports/*,*/bower_components/*
