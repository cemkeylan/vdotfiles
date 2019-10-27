let mapleader ="\\"

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

set number relativenumber
set nohlsearch
syntax on
set nocompatible
set clipboard=unnamedplus
filetype plugin indent on

call plug#begin('~/.config/nvim/plugged')
Plug 'mcchrish/nnn.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'lervag/vimtex'
Plug 'AndrewRadev/id3.vim'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-surround'
Plug 'junegunn/goyo.vim'
Plug 'jreybert/vimagit'
call plug#end()


vnoremap <silent><Leader>y "yy <Bar> :call system('xclip', @y)<CR>

" vimwiki related
let g:vimwiki_list = [{'path': '~/.wiki'}, {'path': '~/.wiki2'}]
autocmd FileType vimwiki nnoremap <leader>vws :VWS 
autocmd FileType vimwiki nnoremap <leader>nn :lnext<CR>
autocmd FileType vimwiki nnoremap <leader>NN :lprevious<CR>

" Goyo keybinding
map <leader>nd :Goyo <CR>
map <leader>yd :Goyo! <CR>

" Get bibliography
map <leader>b :vsp<space>$BIB<CR>

" Placeholders

" Create place holder
inoremap <leader>aa <-.->
map <leader>aa a<-.-><Esc>
" Go to the next placeholder
inoremap <leader><leader> <Esc>/<-.-><Enter>"_c5l
vnoremap <leader><leader> <Esc>/<-.-><Enter>"_c5l
map <leader><leader> <Esc>/<-.-><Enter>"_c5l

" NerdTree
map <C-o> :NERDTreeToggle<CR>
