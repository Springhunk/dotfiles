" Sources
source $HOME/.config/nvim/vim-plug/plugins.vim

" Default
set number
set tabstop=4
set shiftwidth=4
set nowrap
set incsearch
set noautoindent
set showtabline=2
set noshowmode

colorscheme nord

" Shortcuts
nnoremap <silent> <leader>ev :e $MYVIMRC<cr>

" NERDTree
autocmd STdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

let g:NERDTreeGitStatusWithFlags=1

nnoremap <leader>n :NERDTreeFocus<cr>
nnoremap <C-n> :NERDTree<cr>
nnoremap <C-t> :NERDTreeToggle<cr>
nnoremap <C-n> :NERDTreeFind<cr>

" Airline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1

" Compile and Run
