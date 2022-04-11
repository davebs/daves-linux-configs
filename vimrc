set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'sickill/vim-monokai'
" Plugin 'majutsushi/tagbar'
" Plugin 'ternjs/tern_for_vim'
" Plugin 'camspiers/animate.vim'
" Plugin 'camspiers/lens.vim'
" Plugin 'file:///~/.vim/bundle/vim-dave'

call vundle#end()
filetype plugin indent on

let g:lens#height_resize_min=100

let g:airline_powerline_fonts = 1
let g:airline_theme='papercolor'

" let g:tagbar_left = 1
" let g:tagbar_sort = 0
" let g:tagbar_autofocus = 1
" let g:tagbar_compact = 1
" let g:tagbar_show_linenumbers = 1
set laststatus=2
nnoremap <C-d> :NERDTreeToggle<CR>
" map <C-u> :TagbarToggle<CR>
" map <C-u> :DaveToggleOn<CR>

syntax enable
set tabstop=4
set shiftwidth=4
set expandtab
set showmatch
set nobackup
set nowb
set noswapfile
set hlsearch
set number
autocmd CursorMoved * silent! exe printf('match IncSearch /\<%s\>/', expand('<cword>'))
set nocompatible
set cursorline
imap jj <Esc>
hi CursorLine  cterm=NONE ctermbg=black ctermfg=white guibg=darkred guifg=white

nnoremap <NUL> :resize 60<CR>
nnoremap <c-n> <esc>:tabn<CR>
nnoremap <c-p> <esc>:tabp<CR>
colorscheme monokai

let mapleader=","
nnoremap <leader>rc :sp $MYVIMRC<cr>
nnoremap <leader>rl :source $MYVIMRC<cr>
