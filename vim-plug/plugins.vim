" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " themes 
    " Plug 'joshdick/onedark.vim'
    Plug 'morhetz/gruvbox' " themes 
    " intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Status 
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Ranger 
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " FzF 
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " Colorizer 
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'junegunn/rainbow_parentheses.vim'
    " Git 
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    " Sneak 
    Plug 'justinmk/vim-sneak'
    "  Which key
    Plug 'liuchengxu/vim-which-key'
    "Floaterm 
    Plug 'voldikss/vim-floaterm'
    " Snippets 
    Plug 'honza/vim-snippets'
    " Close Tag
    Plug 'alvan/vim-closetag' 
    " Easymotion
    Plug 'easymotion/vim-easymotion'
    Plug 'tpope/vim-sleuth' " auto set indent settings(thut le) 
    Plug 'airblade/vim-gitgutter' " git 
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
    " Surround
    Plug 'tpope/vim-surround'
    " Have the file system follow you around
    Plug 'airblade/vim-rooter'
    Plug 'scrooloose/nerdcommenter'
    " Useful for React Commenting 
    Plug 'suy/vim-context-commentstring'
    " Better Comments
    Plug 'tpope/vim-commentary'
    " Project manager 
    Plug 'mhinz/vim-startify'
        " live server
    Plug 'turbio/bracey.vim'
    "  linting 
    Plug 'neomake/neomake'


    call plug#end()

    " Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
