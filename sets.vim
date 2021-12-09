" Better nav for omnicomplet" set leader key
let g:mapleader = "\<Space>"

set hidden                              " Required to keep multiple buffers open multiple buffers
set encoding=utf-8                      " The encoding displayed
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc

set history=50
set ruler
set showcmd " display incomplete commands
set laststatus=2
set autowrite    " automatically :write before running commands
set noshowmode


" indents
filetype plugin indent on
set shiftwidth=2
set tabstop=2                           " Insert 2 spaces for a tab
set autoindent                          " Good auto indent
set smarttab
set nowrap "No Wrap lines
set backspace=indent,eol,start  " allow backspacing over everything in insert mode

set wildignore+=*/node_modules/*

set nojoinspaces                        " use one space, not two, after punctuation

set mouse=a                            " Enable your mouse

set number relativenumber                             " Line numbers
set numberwidth=5

" set list listchars=tab:»·,trail:·,space:· " Display extra whitespace

set splitbelow splitright                         " Horizontal splits will automatically be below

" Autocomplete with dictionary words when spell check is on
set complete+=kspell

" Always use vertical diffs
set diffopt+=vertical

set cursorline                          " Enable highlighting of the current line
" make it obvious where 80 characters is
set colorcolumn=120

set updatetime=50                      " Faster completion

set clipboard=unnamedplus               " Copy paste between vim and everything else

" ingore case when searching
set ignorecase
set incsearch                           " search and hightlight 
set hlsearch
set smartcase

set lazyredraw

set termguicolors
set background=dark                     " tell vim what the background color looks like


set cmdheight=2 " Give more space for displaying messages.
set shortmess+=c    " Don't pass messages to |ins-completion-menu|.
set ttyfast

set inccommand=split " for incsearch while sub ( neovim only )

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

