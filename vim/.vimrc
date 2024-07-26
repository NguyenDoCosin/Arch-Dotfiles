""" PLUGINS

call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'dylanaraps/wal.vim'

call plug#end()

""" CONFIGURATIONS

" Do not save backup files.
set nobackup

" Set wal colors
colorscheme wal

" Set cursor
let &t_SI = "\e[5 q"
let &t_EI = "\e[0 q"

