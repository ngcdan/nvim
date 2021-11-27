" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  Plug 'jiangmiao/auto-pairs'   " Auto pairs for '(' '[' '{'
  Plug 'sheerun/vim-polyglot'     " Better Syntax Support

  Plug 'easymotion/vim-easymotion'     " Easymotion

  Plug 'scrooloose/NERDTree'
  Plug 'nvim-treesitter/nvim-treesitter'

  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " Git
  Plug 'tpope/vim-fugitive'

  Plug 'voldikss/vim-floaterm'                              "Floaterm
  Plug 'mhinz/vim-startify'                                 " Project manager

  Plug 'morhetz/gruvbox' " themes
  Plug 'norcalli/nvim-colorizer.lua'

if has("nvim") 
  Plug 'neovim/nvim-lspconfig'
endif

call plug#end()

