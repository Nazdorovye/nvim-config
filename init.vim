:set number
:set relativenumber
:set autoindent
:set smartindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set expandtab

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/rbong/vim-flog/'

call plug#end()

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

nnoremap <C-b> :NERDTreeToggle<CR>

:highlight EndOfBuffer ctermfg=black ctermbg=black " hide eob tilde

