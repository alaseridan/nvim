Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


function TelescopeSetup()
lua << EOF
require("telescope").setup {
	pickers = {
		find_files = {
			theme = "ivy"
			}
	}
}
EOF
endfunction

augroup TelescopeSetup
    autocmd!
    autocmd User PlugLoaded call TelescopeSetup()
augroup END
