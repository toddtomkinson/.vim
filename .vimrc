set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

" NERDTree for file browsing
Plugin 'scrooloose/nerdtree'
let NERDTreeIgnore = ['\.pyc$', '\.git$', '.*\.swp$']
let NERDTreeShowHidden=1
Plugin 'jistr/vim-nerdtree-tabs'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'elzr/vim-json'
Plugin 'saltstack/salt-vim'
Plugin 'tpope/vim-fugitive'
" Go Support (needs to go before the solarized plugin)
" TODO: Need to figure out how to make the go plugin play nicely with
" YouCompleteMe and syntastic...
" Plugin 'fatih/vim-go'

" basic UI
Plugin 'altercation/vim-colors-solarized'
call vundle#end()
filetype plugin indent on     " required!
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
autocmd Filetype cpp setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype c setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype java setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype php setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype groovy setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype css setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype javascript setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype go setlocal expandtab tabstop=4 shiftwidth=4 listchars=tab:\ \ ,eol:¶,nbsp:·,trail:·,precedes:·,extends:·

" syntastic
let g:syntastic_always_populate_loc_list=1

let g:EclimFileTypeValidate=0
let g:EclimJavaValidate=0
let g:EclimCompletionMethod = 'omnifunc'
