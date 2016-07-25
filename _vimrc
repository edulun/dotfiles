set backupdir=/tmp
set directory=/tmp
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

" Status/ tabline
Plugin 'bling/vim-airline'

" Quick commenting code <>cc
Plugin 'scrooloose/nerdcommenter'

" File navigation
" <F5> - refresh
" <c-f>, <c-b>  - cycle modes
" <c-t>, <c-v>, <c-x> to open the selected entry in a new tab or in a new split.
" <c-n>, <c-p> to select the next/previous string in the prompt's history.
" <c-y> new file
" <c-z> mark/unmark multiple files and <c-o> to open them.
Plugin 'ctrlpvim/ctrlp.vim'

" Highlight EOL whitespace
Plugin 'bronson/vim-trailing-whitespace'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" Navigation
Plugin 'tpope/vim-vinegar'

Plugin 'scrooloose/syntastic'

" Bracketed pasting, so pasting code doesn't mess up the indentation.
Plugin 'conradirwin/vim-bracketed-paste'

Plugin 'pangloss/vim-javascript'

Plugin 'edulun/vim-jsx'

Plugin 'plasticboy/vim-markdown'

"Plugin 'mattn/emmet-vim'

call vundle#end()

colorscheme Monokai
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

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/dist/*,*/node_modules/*,*/reports/*,*/bower_components/*

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set foldmethod=syntax
set foldlevelstart=20

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

let mapleader = "\<Space>"

inoremap jk <esc>
inoremap kj <esc>

inoremap jk <esc>
inoremap kj <esc>

noremap <Leader>w :w<CR>

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

"Toggle search highlight
let hlstate=1
nnoremap <Leader>k :if (hlstate == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=1-hlstate<cr>
