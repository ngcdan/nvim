" let g:EasyMotion_do_mapping = 0 " Disable default mappings
" " Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1
let g:EasyMotion_verbose = 0
let g:EasyMotion_do_shade = 0



" s{char}{char} to move to {char}{char}
nmap <silent> s <Plug>(easymotion-s2)
"Lower case finds upper & lower case but upper case only finds upper case
let g:EasyMotion_smartcase = 1
