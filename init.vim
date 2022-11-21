"--------------------------------------------------------------------------
" Settings
"--------------------------------------------------------------------------

set hidden
set autoindent
set background=dark
set backspace=indent,eol,start
set backup
set helplang=En
set history=200
set hlsearch
set ignorecase
set incsearch
set langnoremap
set mouse=nvi
set nrformats=bin,hex
set ruler
" set runtimepath=~/vimfiles,C:\\Program\ Files\ (x86)\\Vim/vimfiles,C:\\Program\ Files\ (x86)\\Vim\\vim82,C:\\Program\ Files\ (x86)\\Vim\\vim82\\pack\\dist\\opt\\matchit,C:\\Program\ Files\ (x86)\\Vim/vimfiles/after,~/vimfiles/after
set scrolloff=5
set ttimeout
set ttimeoutlen=100
set undofile
set wildmenu
set nu
set clipboard=unnamed
set nowrap
set splitright
"set autochdir
set termguicolors
set encoding=UTF-8
set noequalalways "don't automatically resize windows

" store backup, undo, and swap files in temp directory
set backup
set backupdir=C:\WINDOWS\Temp
set backupskip=C:\WINDOWS\Temp\*
set directory=C:\WINDOWS\Temp
set undodir=C:\WINDOWS\Temp
set writebackup

set spell spelllang=en_us
" in insert mode fix misspelled word with <C-x> s

let g:python3_host_prog = expand("C:/Python310/python")

"--------------------------------------------------------------------------
" Key maps
"--------------------------------------------------------------------------

let mapleader=","

nmap <leader>ve :edit ~/AppData/Local/nvim/init.vim<cr>
map gf :edit <cfile><cr>
nmap <leader>sv :vsp <cfile><cr>
nmap <leader>sh :sp <cfile><cr>

vmap <C-X> "*d
vmap <C-Del> "*d
vmap <S-Del> "*d
vmap <C-Insert> "*y
vmap <S-Insert> "-d"*P

" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

nmap <S-Insert> "*P
inoremap  u

:map <space> viw

" Swap line and char mark lookups
:nnoremap ' `
:nnoremap ` '

" window navigation
map <silent> <C-j> <C-w>j
map <silent> <C-k> <C-w>k
map <silent> <C-h> <C-w>h
map <silent> <C-l> <C-w>l
" Maps Alt-[h,j,k,l] to resizing a window split
map <silent> <A-h> <C-w>>
map <silent> <A-j> <C-W>+
map <silent> <A-k> <C-W>-
map <silent> <A-l> <C-w><
" Maps Alt-[s.v] to horizontal and vertical split respectively
map <silent> <A-s> :split<CR>
map <silent> <A-v> :vsplit<CR>

" nav buffers
nmap gj :bnext<CR>
nmap gk :bprev<CR>
" delete buffer without losing window
nmap <leader>q :bprev <Bar> :bd#<CR>

noremap <leader>s v$hc

" set the current directory or copy it to the clipboard
nnoremap <M-z> :cd %:p:h<CR>
nnoremap <M-x> :let @+=expand('%:p:h')<CR>:cd <C-r>+
nnoremap <M-c> :e <C-r>+

inoremap <silent>  <S-Insert>  <C-R>+

nmap <esc><esc> <cmd>nohlsearch<cr>

" keep last yank in register after a yank
"xnoremap p pgv"@=v:register.'y'<cr>
xnoremap p pgvy

"nmap <leader>l ::CocCommand eslint.executeAutofix<cr>
nmap <leader>l :call CocActionAsync('format')<cr>
"nmap <leader>l :ALEFix<cr>


"map gd :ALEGoToDefinition<CR>
"map gr :ALEFindReferences<CR>

" vscode custom keys
if exists('g:vscode')
	source ~/AppData/Local/nvim/vscodekeys.vim
endif

"vimspector maps (define before starting vimspector)
let g:vimspector_enable_mappings = 'HUMAN'
nmap <leader>b <Plug>VimspectorToggleBreakpoint
nmap <leader>vd <Plug>VimspectorLaunch
nmap <leader>vx <Plug>VimspectorReset

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

"--------------------------------------------------------------------------
" Plugins
"--------------------------------------------------------------------------
call plug#begin('~/AppData/Local/nvim/plugged')


"THEMES
"source ~/AppData/Local/nvim/plugins/dracula.vim
"source ~/AppData/Local/nvim/plugins/codedark.vim
source ~/AppData/Local/nvim/plugins/nordtheme.vim
source ~/AppData/Local/nvim/plugins/onedark.vim

"FILE NAVIGATION
source ~/AppData/Local/nvim/plugins/fern.vim "directory navigation with optional drawer
source ~/AppData/Local/nvim/plugins/fzf.vim "fuzzy search
"source ~/AppData/Local/nvim/plugins/nerdfont.vim 



source ~/AppData/Local/nvim/plugins/floaterm.vim "floating terminal
source ~/AppData/Local/nvim/plugins/airline.vim "informational headers and footers
source ~/AppData/Local/nvim/plugins/vim-signature.vim "display and navigate marks
source ~/AppData/Local/nvim/plugins/neogit.vim "emacs style git commands
source ~/AppData/Local/nvim/plugins/treesitter.vim "syntax highlighting and folding, chosen over polyglot
"source ~/AppData/Local/nvim/plugins/anyfold.vim "folding
source ~/AppData/Local/nvim/plugins/markdown.vim "provides live markdown preview
"source ~/AppData/Local/nvim/plugins/autsession.vim "session manager
source ~/AppData/Local/nvim/plugins/session.vim 

"source ~/AppData/Local/nvim/plugins/omnisharp.vim "for c#
source ~/AppData/Local/nvim/plugins/coc.vim "code completion and syntax + linter
"source ~/AppData/Local/nvim/plugins/coc-volar.vim
"ale and deoplete are much lighter than coc (100mb instead of 1gb+)
"source ~/AppData/Local/nvim/plugins/ale.vim "use instead of coc
"source ~/AppData/Local/nvim/plugins/deoplete.vim "autocomplete instead of coc
"source ~/AppData/Local/nvim/plugins/auto-pairs.vim "bracket completion
source ~/AppData/Local/nvim/plugins/vim-surround.vim "bracket completion
source ~/AppData/Local/nvim/plugins/vimspector.vim "debug tool
source ~/AppData/Local/nvim/plugins/jupyter-vim.vim "send to terminal

"Git plugins
source ~/AppData/Local/nvim/plugins/gitgutter.vim
source ~/AppData/Local/nvim/plugins/vimagit.vim
source ~/AppData/Local/nvim/plugins/fugitive.vim
source ~/AppData/Local/nvim/plugins/blamer.vim "like gitlens in vscode

if exists('g:vscode')
	source ~/AppData/Local/nvim/plugins/easymotionvscode.vim
else
	source ~/AppData/Local/nvim/plugins/easymotion.vim
	source ~/AppData/Local/nvim/plugins/which-key.vim
endif

call plug#end()
doautocmd User PlugLoaded

colorscheme onedark
let g:airline_theme = g:colors_name
