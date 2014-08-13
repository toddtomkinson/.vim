set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'

" NERDTree for file browsing
Plugin 'scrooloose/nerdtree'
let NERDTreeIgnore = ['\.pyc$', '\.git$', '.*\.swp$']
let NERDTreeShowHidden=1
Plugin 'jistr/vim-nerdtree-tabs'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Solarized Color Scheme
Plugin 'altercation/vim-colors-solarized'
syntax on
set background=dark
colorscheme solarized

" Search
Plugin 'kien/ctrlp.vim'

" basic UI
set number
set ruler
set listchars=tab:>-,eol:¶,nbsp:·,trail:·,precedes:·,extends:·
set list
set colorcolumn=80

" JSON
Plugin 'elzr/vim-json'

" Salt
Plugin 'saltstack/salt-vim'

" Git
Plugin 'tpope/vim-fugitive'

" filetypes
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype java setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype php setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype groovy setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype css setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype javascript setlocal expandtab tabstop=4 shiftwidth=4

filetype plugin indent on     " required!

