" set leader key
let g:mapleader = "\<Space>"

syntax enable                           " Enables syntax highlighing
syntax on
set hidden                              " Required to keep multiple buffers open multiple buffers
set encoding=utf-8                      " The encoding displayed
set backspace=2                         " Backspace deletes like most program in insert mode 
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set nowrap                              " Display long lines as just one line
set history=50
set ruler
set showcmd
set laststatus=2
set autowrite
set nomodeline
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2
set shiftround
set expandtab                           " Converts tabs to spaces
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set autoindent                          " Good auto indent
set smartindent                         " Makes indenting smart
set textwidth=120
set colorcolumn=+1
set cmdheight=1                         "height of the command bar 
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                            " Enable your mouse
set laststatus=0                        " Always display the status line
set number relativenumber                             " Line numbers
set nojoinspaces                        " use one space, not two, after punctuation 
set list listchars=tab:»·,trail:·,space:· " Display extra whitespace
set splitbelow splitright                         " Horizontal splits will automatically be below
set termguicolors

set cursorline                          " Enable highlighting of the current line
set cursorcolumn

set background=dark                     " tell vim what the background color looks like
set signcolumn=yes
set showtabline=1                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set updatetime=50                      " Faster completion
set clipboard=unnamedplus               " Copy paste between vim and everything else 
" ingore case when searching 
set ignorecase
set incsearch                           "  makes search act like search in modern brosers
set hlsearch
set smartcase
" For regular expressions turn magic on
set magic
" How many tenths of a second to blink when matching brackets
set mat=2
