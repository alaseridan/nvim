Plug 'dense-analysis/ale'
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
let g:ale_linters= {
      \   'javascript': ['prettier','eslint','tsserver'],
      \   'vue': ['prettier','eslint'],
      \}
let g:ale_fixers = {
      \   'javascript': ['prettier','eslint'],
      \   'vue': ['prettier','eslint'],
      \}
