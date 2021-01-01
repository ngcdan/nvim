" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'tpope/vim-commentary'
    Plug 'easymotion/vim-easymotion'     " Easymotion
    Plug 'tpope/vim-surround'     " Surround (support [], {}, '')
    Plug 'alvan/vim-closetag'     " Close Tag
    Plug 'tpope/vim-sleuth' " auto set indent settings(thut le) 
    Plug 'honza/vim-snippets'                                     " Snippets 
    Plug 'sheerun/vim-polyglot'     " Better Syntax Support

    Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
    Plug 'kyazdani42/nvim-web-devicons'  " Cool Icons
    Plug 'ryanoasis/vim-devicons'

    Plug 'vim-airline/vim-airline'                      " Status 
    Plug 'vim-airline/vim-airline-themes'

    Plug 'neoclide/coc.nvim', {'branch': 'release'}     " intellisense
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim' 
    " Git
    Plug 'airblade/vim-gitgutter'                             "  git explorer 
    Plug 'tpope/vim-fugitive'

    Plug 'voldikss/vim-floaterm'                              "Floaterm 
    Plug 'mhinz/vim-startify'                                 " Project manager 
    Plug 'psliwka/vim-smoothie'                               " Smooth scroll ( cuon muot ma  )
    Plug 'airblade/vim-rooter'     " Have the file system follow you around 

    Plug 'leafgarland/typescript-vim'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'morhetz/gruvbox' " themes  
    call plug#end()

    " Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
