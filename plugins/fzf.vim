Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

nnoremap <leader>ff <cmd>Files<cr>
nnoremap <leader>fg <cmd>Rg<cr>
nnoremap <leader>fb <cmd>Buffers<cr>
nnoremap <leader>fh <cmd>Helptags<cr>
nnoremap <leader>fm <cmd>Marks<cr>

let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']
let g:airline#extensions#branch#enabled = 0
