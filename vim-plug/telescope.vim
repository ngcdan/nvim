" Search over variable references from your Language Server.
nnoremap <silent> gr <cmd>lua require'telescope.builtin'.lsp_references{}<CR>
"
" Find all the files in your nvim config.
nnoremap <Leader>en <cmd>lua require'telescope.builtin'.find_files{ cwd = "~/.config/nvim/" }<CR>

nnoremap <leader>p <cmd>Telescope find_files<cr>
nnoremap <leader>pg <cmd>Telescope live_grep<cr>
nnoremap ; <cmd>Telescope buffers<cr>
nnoremap <leader>ph <cmd>Telescope help_tags<cr>

