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
Plug 'https://github.com/rbong/vim-flog'
Plug 'https://github.com/tpope/vim-commentary'

call plug#end()

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


" here _ is / : <C-/>
nnoremap <C-_>         :Commentary<CR>
" toggle NERDTree
nnoremap <C-b>         :NERDTreeToggle<CR>
inoremap <C-b>         :NERDTreeToggle<CR>
vnoremap <C-b>         :NERDTreeToggle<CR>

" move line up in normal mode
nnoremap <A-Up>        :m .-2<CR>==
" move line down in normal mode
nnoremap <A-Down>      :m .+1<CR>==
" move line up in insert mode
inoremap <A-Up>   <Esc>:m .-2<CR>==gi
" move line down in insert mode
inoremap <A-Down> <Esc>:m .+1<CR>==gi
" move line up in visual mode
vnoremap <A-Up>        :m '<-2<CR>gv=gv
" move line down in visual mode
vnoremap <A-Down>      :m '>+1<CR>gv=gv

:highlight EndOfBuffer ctermfg=black ctermbg=black " hide eob tilde

