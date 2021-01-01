function! Comment()
  if (mode() == "n" )
    execute "Commentary"
  else    
    execute "'<,'>Commentary"
  endif
 endfunction
map <silent> <leader>/ :call Comment()<CR>
" nnoremap <leader>/ :call Comment()<CR>
