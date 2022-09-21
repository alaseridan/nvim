"https://dockyard.com/blog/2018/06/01/simple-vim-session-management-part-1
"https://dockyard.com/blog/2019/06/25/simple-vim-session-management-part-2
Plug 'tpope/vim-obsession'


let g:session_dir = '~\vim-sessions'
"exec 'nnoremap <Leader>ss :mks! ' . g:session_dir . '\*.vim<C-D><BS><BS><BS><BS><BS>'
"exec 'nnoremap <Leader>sr :bufdo bd <bar> so ' . g:session_dir. '\*.vim<C-D><BS><BS><BS><BS><BS>'
"exec 'nnoremap <Leader>su :wa<bar>mks!' . v:this_session .'<CR>'
"update to use obsession
exec 'nnoremap <Leader>ss :Obsession ' . g:session_dir . '\*.vim<C-D><BS><BS><BS><BS><BS>'
exec 'nnoremap <Leader>sr :Obsession<CR>:bufdo bd<CR>:so ' . g:session_dir. '\*.vim<C-D><BS><BS><BS><BS><BS>'
