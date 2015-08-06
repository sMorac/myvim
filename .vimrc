set undolevels=1000      " use 1000 levels of undo
set history=1000    " use 1000 levels of cmd history

" Save undo's after file closes
set undofile

" adding ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

"file detection with plugin and indent
filetype plugin on
filetype indent on

" color syntax hightlighting
colorscheme smyck
syntax enable 

" search
set hlsearch " hightlight 
set incsearch " incremental like google 
set ignorecase
set smartcase " don't ignore if caps 
" line numbers
set nu

" show matching bracket
set showmatch
set mat=2

" Set to auto read when a file is changed from the outside
set autoread

" indenting options
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set si
set lbr
set wrap
set smarttab

" backspace and cursor tweaks 
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

" cmd completion
set wildmenu
set wildmode=longest,list,full
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png

set nobackup
set noswapfile
:set completeopt=longest,menuone " completion settings

" pathogen package manager
execute pathogen#infect()

" YouCompleteMe completion package
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" adding ect files as html (ect.js templating engine)
au BufReadPost *.ect set syntax=html

" to move around in wrapped long lines
map j gj
map k gk

" Always show the status line
set laststatus=2
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l:%c
