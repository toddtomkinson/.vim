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

" powerline statusline plugin
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" completion plugins
Plugin 'Valloric/YouCompleteMe'

" Search
Plugin 'kien/ctrlp.vim'

" JSON
Plugin 'elzr/vim-json'

" Salt
Plugin 'saltstack/salt-vim'

" Git
Plugin 'tpope/vim-fugitive'

" Go Support (needs to go before the solarized plugin)
Plugin 'fatih/vim-go'

" basic UI
Plugin 'altercation/vim-colors-solarized'
syntax on
set background=dark
colorscheme solarized

set number
set ruler
set listchars=tab:>-,eol:¶,nbsp:·,trail:·,precedes:·,extends:·
set list
set colorcolumn=80

" filetypes
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype java setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype php setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype groovy setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype css setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype javascript setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype go setlocal expandtab tabstop=4 shiftwidth=4 listchars=tab:\ \ ,eol:¶,nbsp:·,trail:·,precedes:·,extends:·

filetype plugin indent on     " required!

