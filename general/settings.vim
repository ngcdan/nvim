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
set pumheight=10                        " Makes popup menu smaller
set ruler
set showcmd
set incsearch " do incremental searching 
set laststatus=2
set autowrite
set modelines=0
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
set fileencoding=utf-8                  " The encoding written to file
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                            " Enable your mouse
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set relativenumber
set numberwidth=4
set nojoinspaces " use one space, not two, after punctuation 
set list listchars=tab:»·,trail:·,nbsp:· " Display extra whitespace
set tags^=.git/tags
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set lazyredraw
set termguicolors
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set signcolumn=yes
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee % 