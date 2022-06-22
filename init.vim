" Used for Fuzzy File Finder FZF
nnoremap <C-p> :Files<Cr>

set exrc "Executes .vimrc in given directory (good for custom configuration for a project)
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set nowrap
set background=dark
set number
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set incsearch
set scrolloff=8
set signcolumn=yes

" Alternate : and ; since you use : way more often (don't want to have to
" press shift!)
nnoremap : ;
nnoremap ; :

call plug#begin('~/.vim/autoload')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'morhetz/gruvbox'
call plug#end()

:colorscheme gruvbox
