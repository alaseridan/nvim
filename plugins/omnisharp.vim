" https://github.com/dimixar/vim-config/blob/neovim/.vimrc
Plug 'OmniSharp/omnisharp-vim'

"map gi :OmniSharpFindImplementations<CR>
"map gr :OmniSharpFindUsages<CR>
"map gp :OmniSharpPreviewDefinition<CR>
"map gd :OmniSharpGotoDefinition<CR>

let g:OmniSharp_selector_ui = 'fzf'
let g:OmniSharp_want_snippet=1
set splitbelow
set completeopt=longest,menuone
