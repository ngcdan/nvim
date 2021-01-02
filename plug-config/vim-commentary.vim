function! Comment()
  if (mode() == "n" )
    execute "Commentary"
  else    
    execute "'<,'>Commentary"
  endif
 endfunction
map <silent> <leader><cr> :call Comment()<CR>
