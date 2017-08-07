call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/syntastic'
Plug 'itchyny/lightline.vim'
Plug 'flazz/vim-colorschemes'
Plug 'mbbill/undotree'
Plug 'tpope/vim-surround'
Plug 'rust-lang/rust.vim'
Plug 'dag/vim2hs'
Plug 'racer-rust/vim-racer'
Plug 'kien/ctrlp.vim'
call plug#end()

set t_Co=256

filetype plugin indent on 

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0		
let g:syntastic_rust_checkers=['cargo']
let g:lightline = { 'colorscheme':'wombat' } 
set laststatus=2
set noshowmode

" Racer settings
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)


" Color settings
" good schemes:
 colorscheme iceberg
" colorscheme janah
" colorscheme kolor
" colorscheme lucid
" colorscheme darkburn

" syntax
syntax on
" Keybindings

" Set leader to space
nnoremap <SPACE> <Nop>
let mapleader = "\<SPACE>"

" intentLine settings
let g:indentLine_color_term = 239
let g:indentLine_char = '|'

" NERDTree bindings
nnoremap <leader>t :NERDTreeToggle<CR>

" Move between files
nnoremap <leader>. :bn<CR>
nnoremap <leader>, :bp<CR>

" Moves current line down
nnoremap - ddp
" Moves current line up
nnoremap _ ddkP

" undo tree mappings
nnoremap <leader>u :UndotreeToggle<CR>

" movement between splits
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>

" EasyMotion configs
let g:EasyMotion_do_mapping = 0
nmap <leader>g <Plug>(easymotion-overwin-f)


" opens/closes syntasitic error window
nnoremap <leader>e :Errors<CR>
nnoremap <leader>c :lclose<CR>

" *** longer commands *** "

" reload vimrc
nnoremap <leader>,rl :w<CR>:source ~/.config/nvim/init.vim<CR>

" edit vimrc
nnoremap <leader>,rc  :<CR>:e ~/.config/nvim/init.vim<CR>

" tab stuff
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

" set linenumbers
set relativenumber
set number
