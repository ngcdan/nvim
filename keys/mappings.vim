" g Leader key
let mapleader=" "
" let localleader=" "
nnoremap <Space> <Nop>

" Better indenting
vnoremap < <gv
vnoremap > >gv
   
" close buffer 
map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>
 " move window navigation
nnoremap <leader>h :wincmd h<CR>  
nnoremap <leader>l :wincmd l<CR>  
nnoremap <leader>k :wincmd k<CR>  
nnoremap <leader>j :wincmd j<CR>  
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
" Better window navigation = leader 
 nnoremap <C-h> <C-w>h
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l

inoremap jk <Esc>
inoremap kj <Esc>

 " TAB in general mode will move to text buffer
 nnoremap <silent> <TAB> :bnext<CR>
 " SHIFT-TAB will go back
 nnoremap <silent> <S-TAB> :bprevious<C>
    
  " Move selected line / block of text in visual mode
  xnoremap K :move '<-2<CR>gv-gv
  xnoremap J :move '>+1<CR>gv-gv
 " Alternate way to save
  nnoremap <silent> <C-s> :w<CR>
  " Alternate way to quit 
  nnoremap <silent> <C-Q> :wq!<CR>
  " Alternate way to quit
  nnoremap <silent> <C-q> :q<CR>
  " Use control-c instead of escape
  nnoremap <silent> <C-c> <Esc>
  inoremap <C-c> <esc>
  " <TAB>: completion.
  inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
  " Use control-c instead of escape
  nnoremap <silent> <C-c> <Esc>
  " <TAB>: completion.
  inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Get off my lawn 
 nnoremap <Left> :echoe "Use h"<CR>
 nnoremap <Right> :echoe "Use l"<CR>
 nnoremap <Up> :echoe "Use k"<CR>
 nnoremap <Down> :echoe "Use j"<CR>


  " Terminal window navigation
"  tnoremap <C-h> <C-\><C-N><C-w>h
"  tnoremap <C-j> <C-\><C-N><C-w>j
"  tnoremap <C-k> <C-\><C-N><C-w>k
"  tnoremap <C-l> <C-\><C-N><C-w>l
"  inoremap <C-h> <C-\><C-N><C-w>h
"  inoremap <C-j> <C-\><C-N><C-w>j
"  inoremap <C-k> <C-\><C-N><C-w>k
"  inoremap <C-l> <C-\><C-N><C-w>l
"  tnoremap <Esc> <C-\><C-n>

  " Mappings to resize windows
nnoremap <silent> <C-Left>  :vertical resize -5<CR>
nnoremap <silent> <C-Right> :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -8<CR>
nnoremap <silent> <leader>+ :vertical resize +8<CR>

  let g:elite_mode=0                      " Disable arrows"
  " Disable arrow movement, resize splits instead.
  if get(g:, 'elite_mode')
      nnoremap <C-Up>    :resize -4<CR>
      nnoremap <C-Down>  :resize +4<CR>
      nnoremap <C-Left>  :vertical resize -4<CR>
      nnoremap <C-Right> :vertical resize +4<CR>
  endif

 " Help searching 
if executable('rg') 
    let g:rg_derive_root='true'
endif
" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")R
