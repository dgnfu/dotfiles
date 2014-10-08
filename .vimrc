set nocompatible
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set ruler
set showmatch
set laststatus=2
set cmdheight=2
set t_Co=256
set number
set backspace=start,indent,eol

" Setup Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Let Vundle load itself
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'vim-scripts/bufkill.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'elzr/vim-json'
Plugin 'joonty/vim-sauce.git'

Plugin 'roblillack/vim-bufferlist'
Plugin 'sickill/vim-monokai'
Plugin 'bling/vim-airline'
Plugin 'mhinz/vim-signify'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'

call vundle#end()
filetype plugin indent on

let g:syntastic_php_checkers = ['php']
let g:ctrlp_working_path_mode = 0
let g:ctrlp_follow_symlinks = 1
let g:signify_vcs_list = [ 'svn', 'git' ]

" Map bufferlist to F3
map <silent> <F3> :call BufferList()<CR>

colorscheme monokai
