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

" nav buffers
nmap gj :bnext<CR>
nmap gk :bprev<CR>

noremap <leader>s v$hc

inoremap <silent>  <S-Insert>  <C-R>+

nmap <esc><esc> <cmd>nohlsearch<cr>

" vscode custom keys
if exists('g:vscode')
	source ~/AppData/Local/nvim/vscodekeys.vim
endif

"--------------------------------------------------------------------------
" Plugins
"--------------------------------------------------------------------------

" Automatically install vim-plug
" let data_dir = has('nvim') ? stdpath('config'): '~/.vim'

" call plug#begin(data_dir . '/plugins')

" call plug#end()
" doautocmd User PlugLoaded

call plug#begin('~/AppData/Local/nvim/plugged')

"source ~/AppData/Local/nvim/plugins/dracula.vim
source ~/AppData/Local/nvim/plugins/codedark.vim
source ~/AppData/Local/nvim/plugins/nerdtree.vim
source ~/AppData/Local/nvim/plugins/floaterm.vim
source ~/AppData/Local/nvim/plugins/airline.vim
source ~/AppData/Local/nvim/plugins/vim-signature.vim

if exists('g:vscode')
	source ~/AppData/Local/nvim/plugins/easymotionvscode.vim
else
	source ~/AppData/Local/nvim/plugins/omnisharp.vim
	source ~/AppData/Local/nvim/plugins/easymotion.vim
	source ~/AppData/Local/nvim/plugins/which-key.vim
endif

call plug#end()
doautocmd User PlugLoaded
