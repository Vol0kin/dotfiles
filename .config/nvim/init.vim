" Basic settings {{{1
" Disable compatibility mode
" When compatibility mode is on, Vim's enhancements are disabled 
if &compatible
	set nocompatible
endif

filetype plugin indent on
" }}}1

" Options setting {{{1
" Buffer management {{{2
set hidden
set number
set relativenumber
set scrolloff=5
set splitbelow
set splitright
" }}}2

" Line limits {{{2
set colorcolumn=81
set linebreak
set wrap
set fixeol
" }}}2

" Tabs {{{2
set noexpandtab
set shiftwidth=4
set tabstop=4
set softtabstop=0
" }}}2

" Other {{{2
set mouse=nvi
" }}}2
" }}}1

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'

Plug 'tpope/vim-fugitive'

" Colorscheme
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

call plug#end()

if has('nvim') || has('termguicolors')
	set termguicolors
endif

colorscheme challenger_deep
