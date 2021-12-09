" g Leader key
let mapleader= " "

" Better indenting
vnoremap < <gv
vnoremap > >gv

" SPLIT SCREENS 
" Ctrl-w v
nnoremap <leader>\ :vsplit<CR> 
" Ctrl-w s
nnoremap <leader>/ :split<CR>

  " close all buffer
map <leader>ba :Bufonly<cr>


command! Bufonly silent! call Preserve("exec '%bd|e#|bd#'")

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

" no highlight search
map <silent> <leader><space> :nohl<cr>

" navigation 
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" cycle focus ctrl-w w
" previous window ctrl-w p

inoremap jk <Esc>
inoremap kj <Esc>

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

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

"Mappings to resize windows
nnoremap <silent> <leader>- :vertical resize -8<CR>
nnoremap <silent> <leader>= :vertical resize +8<CR>

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>
" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s

" FZF
"List all files that are added in the git repo
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>p :Files<CR>
nnoremap <leader>g :Rg<CR>
noremap ` :Buffers<CR>
nnoremap K :Ag <C-R><C-W><CR>

"  Tim tu trong current file con tro 
nnoremap <leader>k /<C-R><C-W><CR>
nnoremap \ :Ag<SPACE>

" s{char}{char} to move to {char}{char}
nmap <silent> s <Plug>(easymotion-s2)
