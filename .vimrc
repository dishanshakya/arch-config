set number relativenumber
syntax on
filetype plugin indent on
set mouse=a
set switchbuf=useopen,usetab,newtab

set tabstop=4
set shiftwidth=4
let g:nerdtree_tabs_autofind = 1
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_open_on_gui_startup = 1

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'


call plug#end()
let g:jsx_ext_required = 0

nnoremap ww :NERDTreeTabsToggle<CR>

" Function to toggle between two windows
function! ToggleLeftRight()
    " If we are in the leftmost window, go right; else go left
    if winnr() == 1
        wincmd l
    else
        wincmd h
    endif
endfunction

" Map ff to toggle
nnoremap ff :call ToggleLeftRight()<CR>

nnoremap fh gT
nnoremap fl gt

nnoremap QQ :wqa<CR>
