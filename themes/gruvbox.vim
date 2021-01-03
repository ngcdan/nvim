let g:gruvbox_invert_selection='0'
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_termcolor=256

colorscheme gruvbox
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

augroup vimrcEx
  autocmd!

  autocmd BufReadPost *
        \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
augroup END

