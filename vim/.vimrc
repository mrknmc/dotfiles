" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Editor
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'ntpeters/vim-better-whitespace'

" Syntax
Plug 'w0rp/ale'

" Proper Python aligning
Plug 'Vimjas/vim-python-pep8-indent'

" Running tests
Plug 'janko-m/vim-test'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Themes
Plug 'dracula/vim'

call plug#end()

filetype plugin indent on

set encoding=utf-8

" Change leader to comma
let mapleader=","

" Enable mouse clicks
set mouse=a

" Show line numbers
set number

" Highlight current line
set cursorline
hi cursorLine term=bold cterm=bold guibg=Grey40

" Incremental search
set incsearch

" Abbreviate messages
set shortmess=atI

" Ignore case (only when lowercase)
set smartcase

" Show current line and column
set ruler

" More powerful backspace
set backspace=indent,eol,start

" Nicer Terminal title
set title

" Highlight search results
set hlsearch

" Syntax highlighting
syntax on
color dracula

" Map jk to Escape
imap jk <Esc>

" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeToggle<CR>

" One space after NERDCommenter comment
let g:NERDSpaceDelims = 1

" Automatically strip whitespace
autocmd FileType javascript,c,cpp,sh,java,html,ruby,python autocmd BufWritePre <buffer> StripWhitespace
