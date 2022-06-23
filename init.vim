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
set nobackup
set nowritebackup

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Alternate : and ; since you use : way more often (don't want to have to
" press shift!)
nnoremap : ;
nnoremap ; :

call plug#begin('~/.vim/autoload')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let g:coc_global_extensions = ['coc-json', 'coc-pyright', 'coc-tsserver', 'coc-git', 'coc-css', 'coc-cssmodules', 'coc-eslint', 'coc-html', 'coc-json', 'coc-java', 'coc-markdownlint', 'coc-sh', 'coc-sql', 'coc-yaml']

:colorscheme gruvbox
