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

" store backup, undo, and swap files in temp directory
set backup
set backupdir=C:\WINDOWS\Temp
set backupskip=C:\WINDOWS\Temp\*
set directory=C:\WINDOWS\Temp
set undodir=C:\WINDOWS\Temp
set writebackup


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
nnoremap <silent> <C-j> <C-w>j<CR>
nnoremap <silent> <C-k> <C-w>k<CR>
nnoremap <silent> <C-h> <C-w>h<CR>
nnoremap <silent> <C-l> <C-w>l<CR>

" nav buffers
nmap gj :bnext<CR>
nmap gk :bprev<CR>

noremap <leader>s v$hc

" set the current directory or copy it to the clipboard
nnoremap <M-z> :cd %:p:h<CR>
nnoremap <M-x> :let @+=expand('%:p:h')<CR>:cd <C-r>+

inoremap <silent>  <S-Insert>  <C-R>+

nmap <esc><esc> <cmd>nohlsearch<cr>

" vscode custom keys
if exists('g:vscode')
	source ~/AppData/Local/nvim/vscodekeys.vim
endif

"--------------------------------------------------------------------------
" Plugins
"--------------------------------------------------------------------------
call plug#begin('~/AppData/Local/nvim/plugged')

"source ~/AppData/Local/nvim/plugins/dracula.vim
"source ~/AppData/Local/nvim/plugins/codedark.vim
source ~/AppData/Local/nvim/plugins/nordtheme.vim
source ~/AppData/Local/nvim/plugins/onedark.vim
"source ~/AppData/Local/nvim/plugins/nerdtree.vim
source ~/AppData/Local/nvim/plugins/fern.vim
source ~/AppData/Local/nvim/plugins/floaterm.vim
source ~/AppData/Local/nvim/plugins/airline.vim
source ~/AppData/Local/nvim/plugins/vim-signature.vim
source ~/AppData/Local/nvim/plugins/neogit.vim
source ~/AppData/Local/nvim/plugins/fzf.vim
source ~/AppData/Local/nvim/plugins/treesitter.vim

if exists('g:vscode')
	source ~/AppData/Local/nvim/plugins/easymotionvscode.vim
else
	source ~/AppData/Local/nvim/plugins/omnisharp.vim
	source ~/AppData/Local/nvim/plugins/easymotion.vim
	source ~/AppData/Local/nvim/plugins/which-key.vim
endif

call plug#end()
doautocmd User PlugLoaded

colorscheme onedark
let g:airline_theme = g:colors_name
