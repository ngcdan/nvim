nnoremap <C-p> :GFiles<CR>
nnoremap <leader>p :Files<CR>
nnoremap <leader>g :Rg<CR>
noremap ` :Buffers<CR>
nnoremap K :Ag <C-R><C-W><CR>

"  Tim tu trong current file con tro 
nnoremap <leader>k /<C-R><C-W><CR>
nnoremap \ :Ag<SPACE>

" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.2,'xoffset': 0.2} }
let $FZF_DEFAULT_OPTS='--reverse'
" let $FZF_DEFAULT_COMMAND='ag --skip-vcs-ignores -g ""'
let $FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

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

