"Using several plugins to setup a markdown environment

"Writing markdown - these plugins weren't that useful to me
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"this caused and issue where the provider threw a python error every keypress
"pip3 install neovim
"or python -m pip install neovim

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"  " use <Tab> to trigger autocompletion
"let g:UltiSnipsJumpForwardTrigger="<c-j>"
"let g:UltiSnipsJumpBackwardTrigger="<c-k>"




"Markdown preview
" if you don't have node and yarn, use pre build
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
"if markdown preview doesn't work run
":call mkdp#util#install()

" do not close the preview tab when switching to other buffers
let g:mkdp_auto_close = 0
nnoremap <leader>mp :MarkdownPreview<CR>
