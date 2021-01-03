" set leader key
let g:mapleader = "\<Space>"

set hidden                              " Required to keep multiple buffers open multiple buffers
set encoding=utf-8                      " The encoding displayed
set backspace=2                         " Backspace deletes like most program in insert mode 
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set nowrap                              " Display long lines as just one line
set history=50
set ruler
set showcmd " display incomplete commands
set laststatus=2
set autowrite    " automatically :write before running commands

set autoindent                          " Good auto indent
set smartindent                         " Makes indenting smart

" soft tabs , 2 spaces
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2
set shiftround
set expandtab                           " Converts tabs to spaces

" make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

set nojoinspaces                        " use one space, not two, after punctuation 

set mouse=a                            " Enable your mouse

set number relativenumber                             " Line numbers
set numberwidth=5

set list listchars=tab:»·,trail:·,space:· " Display extra whitespace

set splitbelow splitright                         " Horizontal splits will automatically be below

" Autocomplete with dictionary words when spell check is on
set complete+=kspell

" Always use vertical diffs
set diffopt+=vertical

set cursorline                          " Enable highlighting of the current line
" set cursorcolumn

" set signcolumn=yes  
" autocmd BufRead,BufNewFile * setlocal signcolumn=yes
" autocmd FileType tagbar,nerdtree setlocal signcolumn=no

set updatetime=300                      " Faster completion

set clipboard=unnamedplus               " Copy paste between vim and everything else 

" ingore case when searching 
set ignorecase
set incsearch                           "  makes search act like search in modern brosers
set hlsearch
set smartcase

set lazyredraw
set termguicolors
set background=dark                     " tell vim what the background color looks like

set backspace=indent,eol,start  " allow backspacing over everything in insert mode

set cmdheight=2 " Give more space for displaying messages.
set shortmess+=c    " Don't pass messages to |ins-completion-menu|.

if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
filetype plugin indent on

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

