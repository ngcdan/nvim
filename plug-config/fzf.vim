" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_buffers_jump = 1 

nnoremap <C-p> :Files<CR>
nnoremap <leader>p :GFiles<CR>
" map <leader>b :Buffers<CR>
" nnoremap <leader>g :Rg<CR>
" nnoremap <leader>t :Tags<CR>
" nnoremap <leader>m :Marks<CR>
" noremap ` :Files<CR>
noremap ` :Buffers<CR>
" bind \ (backward slash) to grep shortcut
nnoremap <C-k> :Ag <C-R><C-W><CR>
"  Tim tu trong current file con tro 
nnoremap K /<C-R><C-W><CR>
nnoremap \ :Ag<SPACE>

" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.2,'xoffset': 0.2} }
" let $FZF_DEFAULT_OPTS = '--layout=reverse --inline-info --bind=ctrl-w:up,ctrl-m:down'
"let $FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git/**'"

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

