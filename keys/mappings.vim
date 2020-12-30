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
            "silent! keepjumps keeppatterns execute a:command
            silent! execute 'keeppatterns keepjumps ' . a:command
        finally
            call winrestview(l:win_view)
        endtry
    endfunction
endif

" move window navigation
"nnoremap <leader>h :wincmd h<CR>  
"nnoremap <leader>l :wincmd l<CR>  
"nnoremap <leader>k :wincmd k<CR>  
"nnoremap <leader>j :wincmd j<CR>  
nnoremap <leader>/ :call Comment()<CR>
nnoremap <leader>t :FloatermToggle<CR>
map <silent> <leader><CR> :nohl<CR>

" Better window navigation = leader 
 " nnoremap <C-h> <C-w>h
 " nnoremap <C-h> <C-w>h
 " nnoremap <C-j> <C-w>j
 " nnoremap <C-k> <C-w>k
 map <C-l> <C-W>l
 map <C-j> <C-W>j
 map <C-k> <C-W>k
 map <C-h> <C-W>h

inoremap jk <Esc>
inoremap kj <Esc>

 " TAB in general mode will move to text buffer
 nnoremap <silent> <TAB> :bnext<CR>
 " SHIFT-TAB will go back
 nnoremap <silent> <S-TAB> :bprevious<C>
    
" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>

  " Move selected line / block of text in visual mode
  xnoremap K :move '<-2<CR>gv-gv
  xnoremap J :move '>+1<CR>gv-gv
 " Fast saving 
  nmap <leader>w :w!<CR>
  " Alternate way to quit 
  nnoremap <silent> <C-Q> :wq!<CR>
  " Alternate way to quit don't save
  nnoremap qq :q<CR>
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

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>
" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun
