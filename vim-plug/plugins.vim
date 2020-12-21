" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " Better Comments
    Plug 'tpope/vim-commentary'
    " Useful for React Commenting 
    Plug 'suy/vim-context-commentstring'

  if exists('g:vscode')
    " Easy motion for VSCode
    Plug 'ChristianChiarulli/vscode-easymotion'
    Plug 'machakann/vim-highlightedyank'
  else

    Plug 'easymotion/vim-easymotion'     " Easymotion
    Plug 'tpope/vim-surround'     " Surround (support [], {}, '')
    Plug 'jiangmiao/auto-pairs'     " Auto pairs for '(' '[' '{'
    Plug 'tpope/vim-sleuth' " auto set indent settings(thut le) 
    Plug 'alvan/vim-closetag'     " Close Tag
    Plug 'AndrewRadev/tagalong.vim'     " Auto change html tags
    Plug 'honza/vim-snippets'                                     " Snippets 
    Plug 'sheerun/vim-polyglot'     " Better Syntax Support
    Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
    Plug 'joshdick/onedark.vim'     " themes 
    Plug 'kyazdani42/nvim-web-devicons'  " Cool Icons
    Plug 'ryanoasis/vim-devicons'
    Plug 'norcalli/nvim-colorizer.lua'     " Colorizer 
    Plug 'junegunn/rainbow_parentheses.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}     " intellisense
    Plug 'vim-airline/vim-airline'                      " Status 
    Plug 'vim-airline/vim-airline-themes'
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
    Plug 'junegunn/fzf.vim' 
    Plug 'ChristianChiarulli/far.vim'         " Find and replace
    " Git
    Plug 'airblade/vim-gitgutter'                             "  git explorer 
    Plug 'tpope/vim-fugitive'                                 " Use git in command 
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

    Plug 'liuchengxu/vim-which-key'                           "  Which key shortcut

    Plug 'mhinz/vim-startify'                                 " Project manager 
    Plug 'psliwka/vim-smoothie'                               " Smooth scroll ( cuon muot ma  )
    Plug 'airblade/vim-rooter'     " Have the file system follow you around 
    Plug 'maxmellon/vim-jsx-pretty'


    " Plug 'voldikss/vim-floaterm'                              "Floaterm 
    " Plug 'justinmk/vim-sneak'                               " Sneak 
    "Plug 'neomake/neomake'                                   "  linting 
    " Plug 'morhetz/gruvbox' " themes  
    "     " Plug 'yuezk/vim-js'
    " Plug 'jelera/vim-javascript-syntax' 
    "
    "
  endif

    call plug#end()

    " Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
