" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  Plug 'jiangmiao/auto-pairs'   " Auto pairs for '(' '[' '{'
  Plug 'easymotion/vim-easymotion'     " Easymotion

  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  Plug 'mhinz/vim-startify'                                 " Project manager

  Plug 'morhetz/gruvbox' " themes

  Plug 'neovim/nvim-lspconfig'
  Plug 'tami5/lspsaga.nvim', { 'branch': 'nvim51' }
  Plug 'RishabhRD/popfix'
  Plug 'RishabhRD/nvim-lsputils'

  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

  " GIT
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'

  " Icon
  Plug 'kyazdani42/nvim-web-devicons'


  Plug 'hoob3rt/lualine.nvim'

  " Plug 'liuchengxu/vim-which-key'

call plug#end()

