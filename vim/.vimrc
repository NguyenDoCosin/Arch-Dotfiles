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
