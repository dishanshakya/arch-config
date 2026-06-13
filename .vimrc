set number relativenumber
syntax on
filetype plugin indent on
set mouse=a
set switchbuf=useopen,usetab,newtab

set tabstop=2
set shiftwidth=2
let g:nerdtree_tabs_autofind = 1
let g:nerdtree_tabs_open_on_console_startup = 0
let g:nerdtree_tabs_open_on_gui_startup = 0

let g:fzf_action = {
  \ 'ctrl-o': '',
  \ 'enter': 'tab split' }

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'


call plug#end()
let g:jsx_ext_required = 0

nnoremap mm :NERDTreeTabsToggle<CR>
nnoremap M :Files<CR>
nnoremap ? :Rg<CR>
nnoremap B :Buffers<CR>

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

nnoremap w gT
nnoremap ; gt

nnoremap QQ :wqa<CR>
nnoremap <Space><Space> :tabc<CR>

nnoremap L $
nnoremap H ^
