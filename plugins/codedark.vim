Plug 'tomasiser/vim-code-dark'

augroup CodeDarkOverrides
    autocmd!
    autocmd User PlugLoaded ++nested colorscheme codedark
augroup end
