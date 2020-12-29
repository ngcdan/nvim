" highlight Cursor guifg=white guibg=black
" highlight iCursor guifg=white guibg=steelblue
" set guicursor=n-v-c:block-Cursor
" set guicursor+=i:ver100-iCursor
" set guicursor+=n-v-c:blinkon0
" set guicursor+=i:blinkwait10 
" g:gruvbox_underline
" available values: 'hard', 'medium'(default), 'soft'
" let g:gruvbox_material_background = 'hard' 
" let g:gruvbox_material_enable_italic = 1
" let g:gruvbox_material_disable_italic_comment = 1
" let g:gruvbox_material_underline = '1'  
" let g:gruvbox_hls_cursor="blue"
" let g:gruvbox_material_hls_cursor = 'white'
let g:gruvox_invert_selection='0'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:grubox_contrast_dark = 'hard'

colorscheme gruvbox_material
