""" PLUGINS

call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dylanaraps/wal.vim'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'

call plug#end()

""" CONFIGURATIONS

" Do not save backup files
set nobackup

" Do not wrap words
set nowrap

" Set the terminal
set splitbelow
set termwinsize=5x0

" Set wal colors
colorscheme wal

" Set cursor
let &t_SI = "\e[5 q"
let &t_EI = "\e[0 q"

""" Key mappings

" NERDtree mappings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
