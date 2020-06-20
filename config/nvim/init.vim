filetype plugin on
syntax on
syntax enable

set background=dark

" Auto read when a file is changed from the outside
set autoread

" Leader
let mapleader=','
let g:mapleader=','
let maplocalleader=';'
let g:maplocalleader=';'

" :W sudo save file
command W w !sudo tee % > /dev/null

" Mappings
inoremap kj <Esc>

" Clipboard
set clipboard^=unnamed,unnamedplus
imap <C-V> <C-R>+
vmap <C-C> y
cmap <C-V> <C-R>+

" Search
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch

" Indent
filetype indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Modeline
set modeline

" Insert delete over line breaks or auto-inserted indents
set backspace=indent,eol,start

" Lines
set relativenumber
set ruler
" Wrapping
set breakindent
set showbreak=\\\\\

" Opening new file with :e
set wildmenu
set wildmode=full

" Folding
set foldmethod=indent
set foldnestmax=2
set nofoldenable

" Backups
set nobackup
set nowb
set noswapfile
" Return to last edit position when opening files
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \ exe "normal! g`\"" |
    \ endif

