" g Leader key
let mapleader=" "

" Better indenting
vnoremap < <gv
vnoremap > >gv
   
" close current buffer 
map <leader>bd :bp<bar>sp<bar>bn<bar>bd<CR>

" close all buffer
map <leader>ba :BufOnly<CR>
command! BufOnly silent! call Preserve("exec '%bd|e#|bd#'")
" preserve function
if !exists('*Preserve')
    function! Preserve(command)
        try
            let l:win_view = winsaveview()
            silent! execute 'keeppatterns keepjumps ' . a:command
        finally
            call winrestview(l:win_view)
        endtry
    endfunction
endif

" no hightlight search
map <silent> <leader><space> :nohl<CR>

" Better window navigation 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

inoremap jk <Esc>
 
" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

 " TAB in general mode will move to text buffer
 nnoremap <silent> <TAB> :bnext<CR>
 " SHIFT-TAB will go back
 nnoremap <silent> <S-TAB> :bprevious<C>
  " <TAB>: completion.
  inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
    
" Super useful when editing files in the same directory
map <leader>te :tabedit<C-r>=expand("%:p:h")<cr>

  " Move selected line / block of text in visual mode
 xnoremap K :move '<-2<CR>gv-gv
 xnoremap J :move '>+1<CR>gv-gv

 " Fast saving 
 nmap <leader>w :w!<CR>
  " Alternate way to quit 
 nnoremap <silent> <C-q> :wq!<CR>
  " Alternate way to quit don't save
 nnoremap qq :q<CR>
  " Use control-c instead of escape
 nnoremap <silent> <C-c> <Esc>

  " Mappings to resize windows
nnoremap <silent> <C-Left>  :vertical resize -5<CR>
nnoremap <silent> <C-Right> :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -8<CR>
nnoremap <silent> <leader>+ :vertical resize +8<CR>

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>
" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
