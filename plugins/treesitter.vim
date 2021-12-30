"Had issues compiling on windows, just download and paste the contents of parsers-windows-2022-clang-x86_64 from the latest
"https://github.com/nvim-treesitter/nvim-treesitter/actions/workflows/check-query-files-and-compilation.yml
"to ~/AppData/Local/nvim/plugged/nvim-treesitter/parser
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

function TreeSitterSetup()
lua <<EOF
require 'nvim-treesitter.install'.compilers = { "clang", "gcc" }
require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = "maintained",

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing
  ignore_install = { },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- list of language that will be disabled
    disable = { "c", "rust" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF
endfunction

augroup TreeSitterSetup
	autocmd!
	autocmd User PlugLoaded call TreeSitterSetup()
augroup END
