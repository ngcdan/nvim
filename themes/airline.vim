 " enable tabline
  let g:airline#extensions#tabline#enabled = 1 
  let g:airline#extensions#tabline#fnamemod = ':t'
  let g:airline#extensions#tabline#left_sep = ''
  " let g:airline#extensions#tabline#left_alt_sep = ''
  " let g:airline#extensions#tabline#right_sep = ''
  " let g:airline#extensions#tabline#right_alt_sep = ''
  " let g:airline#extensions#tabline#show_buffers = 0
  
" " enable powerline fonts
let g:gruvbox_powerline_fonts = 1
let g:gruvbox_left_sep = ''
let g:gruvbox_right_sep = ''
let g:airline_section_b = '%{getcwd()}' " in section B of the status line display the CWD
