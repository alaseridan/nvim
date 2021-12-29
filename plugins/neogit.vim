Plug 'nvim-lua/plenary.nvim'
Plug 'TimUntersberger/neogit'

function NeogitSetup()
lua << EOF
local neogit = require('neogit')
neogit.setup {}
EOF
endfunction

nnoremap <leader>ng <cmd>Neogit<cr>

augroup NeogitSetup
    autocmd!
    autocmd User PlugLoaded call NeogitSetup()
augroup END
