" Enable Mouse
set mouse=a
" user powerline fonts from here https://github.com/powerline/fonts
" Set Editor Font
if exists(':GuiFont')
    " Use GuiFont! to ignore font errors
    "GuiFont Source\ Code\ Pro\ for\ PowerLine:h10:b
    GuiFont! DejaVu\ Sans\ Mono\ for\ PowerLine:h10:b:i
endif

" Disable GUI Tabline
if exists(':GuiTabline')
    GuiTabline 0
endif

" Disable GUI Popupmenu
if exists(':GuiPopupmenu')
    GuiPopupmenu 0
endif

" Enable GUI ScrollBar
if exists(':GuiScrollBar')
    GuiScrollBar 0
endif

set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
