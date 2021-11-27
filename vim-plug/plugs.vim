" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  Plug 'jiangmiao/auto-pairs'   " Auto pairs for '(' '[' '{'
  Plug 'sheerun/vim-polyglot'     " Better Syntax Support

  Plug 'easymotion/vim-easymotion'     " Easymotion

  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " Git
  Plug 'tpope/vim-fugitive'

  Plug 'voldikss/vim-floaterm'                              "Floaterm
  Plug 'mhinz/vim-startify'                                 " Project manager

  Plug 'morhetz/gruvbox' " themes
  Plug 'norcalli/nvim-colorizer.lua'

  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'onsails/lspkind-nvim'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'


call plug#end()

