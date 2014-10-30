set nocompatible
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent
set autoindent
set ruler
set showmatch
set laststatus=2
set cmdheight=2
set t_Co=256
set number
set foldmethod=indent
set foldlevelstart=99
set backspace=start,indent,eol
set hlsearch


" Speed up a bit
set lazyredraw
set ttyfast

" Setup Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Let Vundle load itself
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'moll/vim-bbye'
Plugin 'kien/ctrlp.vim'
Plugin 'elzr/vim-json'
Plugin 'joonty/vim-sauce.git'
Plugin 'sickill/vim-monokai'
Plugin 'bling/vim-airline'
Plugin 'mhinz/vim-signify'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'pangloss/vim-javascript'
Plugin '29decibel/codeschool-vim-theme'

call vundle#end()
filetype plugin indent on

let g:syntastic_mode_map = { "mode": "passive" }
let g:syntastic_php_checkers = ['php', 'phpcs']
let g:ctrlp_working_path_mode = 0
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_open_new_file = 'r'
let g:signify_vcs_list = [ 'svn', 'git' ]
let g:signify_update_on_bufenter = 0
let g:airline_powerline_fonts = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0

" ändra så vi inte matchar <> by default
let g:delimitMate_matchpairs = "(:),[:],{:}"
:autocmd FileType html let b:delimitMate_matchpairs = "(:),[:],{:},<:>"

" turn off search hightlight
nnoremap <leader><space> :nohlsearch<CR>

" leader is \

" Enable SQL syntax in PHP Strings.
let g:php_sql_query = 1

" Map bufferlist to F5
:nnoremap <F5> :buffers<CR>:buffer<Space>

colorscheme codeschool

" Highlight trailing spaces
:highlight ExtraWhitespace ctermbg=darkred guibg=darkred
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkred guibg=darkred
:match ExtraWhitespace /\s+$/
:autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
:autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
:autocmd InsertLeave * match ExtraWhitespace /\s\+$/
:autocmd BufWinLeave * call clearmatches()

" Ställ in färger för indent
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=237

" Färglägg kolumner
:highlight ColorColumn ctermbg=234
:autocmd ColorScheme * highlight ColorColumn ctermbg=234
let &colorcolumn="80,".join(range(120,999),",")

" Simplify pastemode
:nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

" Enable js folding
let g:javascript_fold = 1

" Make it easy to close buffer
nnoremap <leader>d :Bdelete<CR>

" Aliases
cnoreabbr syc SyntasticCheck
