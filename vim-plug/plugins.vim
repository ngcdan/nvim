" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    "autocmd VimEnter * PlugInstall
    "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'tpope/vim-repeat'    " Repeat stuff
Plug 'tpope/vim-surround'     " Surround (support [], {}, '')
Plug 'jiangmiao/auto-pairs'   " Auto pairs for '(' '[' '{'
Plug 'alvan/vim-closetag'     " Close Tag

Plug 'sheerun/vim-polyglot'     " Better Syntax Support

Plug 'tpope/vim-commentary'
Plug 'honza/vim-snippets'                                     " Snippets
 Plug 'mattn/emmet-vim'
Plug 'easymotion/vim-easymotion'     " Easymotion

" ====== Java Plugin ========== "
Plug 'puremourning/vimspector', {'for': ['java']}
Plug 'uiiaoo/java-syntax.vim' "better java syntax
" Plug 'nvim-treesitter/nvim-treesitter'

" === Javascript Plugins === "
Plug 'HerringtonDarkholme/yats.vim' " Typescript syntax highlighting
Plug 'mxw/vim-jsx', { 'for': ['javascript.jsx'] } " JSX syntax
Plug 'pangloss/vim-javascript' " Modern JS support (indent, syntax, etc)
Plug 'sheerun/vim-json'
Plug 'heavenshell/vim-jsdoc', { 'on': ['JsDoc'] } " JS Documentation comments

" Lightline (simple status line)
Plug 'itchyny/lightline.vim'

Plug 'kyazdani42/nvim-web-devicons'  " Cool Icons
Plug 'ryanoasis/vim-devicons'

Plug 'neoclide/coc.nvim', {'branch': 'release'}     " intellisense
" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Git
Plug 'airblade/vim-gitgutter'                             "  git explorer
Plug 'tpope/vim-fugitive'

Plug 'voldikss/vim-floaterm'                              "Floaterm
Plug 'mhinz/vim-startify'                                 " Project manager

" Plug 'leafgarland/typescript-vim'
" Plug 'maxmellon/vim-jsx-pretty'
Plug 'morhetz/gruvbox' " themes
Plug 'norcalli/nvim-colorizer.lua'
Plug 'junegunn/rainbow_parentheses.vim'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
            \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
            \|   PlugInstall --sync | q
            \| endif
