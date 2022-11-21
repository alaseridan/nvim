Plug 'dense-analysis/ale'
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
let g:ale_javascript_prettier_use_local_config = 1
"let g:ale_python_pylint_options = "--init-hook='import sys; sys.path.append(\".\")'"
let g:ale_linters= {
      \   'javascript': ['prettier','eslint','tsserver'],
      \   'vue': ['prettier','eslint'],
      \   'json': ['jsonlint']
      \}
let g:ale_fixers = {
      \   'javascript': ['prettier','eslint'],
      \   'vue': ['prettier','eslint'],
      \   'python': ['add_blank_lines_for_python_control_statements','black','trim_whitespace'],
      \   'json': ['fixjson']
      \}
