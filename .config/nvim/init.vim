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
set foldmethod=marker
" }}}2
" }}}1

" Plugins {{{1
call plug#begin('~/.vim/plugged')

" ALE (Asynchronous Lint Engine) {{{2
Plug 'dense-analysis/ale'
" }}}2

" Airline {{{2
Plug 'vim-airline/vim-airline'
" }}}2

" Surround {{{2
Plug 'tpope/vim-surround'
" }}}2

" Fugitive {{{2
Plug 'tpope/vim-fugitive'
" }}}2

" Emmet {{{2
Plug 'mattn/emmet-vim'

let g:user_emmet_leader_key=','
" }}}2

" Prettier {{{2
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
" }}}2

" Polyglot {{{2
Plug 'sheerun/vim-polyglot'
" }}}2

" Commentary {{{2
Plug 'tpope/vim-commentary'
" }}}2

" NERDTree {{{2
Plug 'preservim/nerdtree'

let NERDTreeShowHidden=1

let NERDTreeIgnore = ['\.git$']

" Customize icons
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.gitignore'] = ''


" Devicons {{{3
Plug 'ryanoasis/vim-devicons'
" }}}3

" Syntax highlight {{{3
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
" }}}3
" }}}2

" Colorscheme {{{2
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
" }}}2

call plug#end()
" }}}1

if has('nvim') || has('termguicolors')
	set termguicolors
endif

colorscheme challenger_deep
