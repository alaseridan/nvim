Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/nerdfont.vim'
"Bookmarks!
Plug 'lambdalisue/fern-bookmark.vim'

let g:fern#renderer = "nerdfont"

nnoremap <leader>e :Fern . -drawer -toggle<cr>
nnoremap <leader>E :Fern .<cr>
nnoremap <leader>eb :Fern bookmark:///<cr>
