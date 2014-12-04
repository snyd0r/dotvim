" Of course
set nocompatible

" Required Vundle setup
filetype off
set runtimepath+=~/.vim/bundle/vundle
call vundle#rc()

" Bundles for vundle
" Core Plugins
Bundle 'gmarik/vundle'
Bundle 'flazz/vim-colorschemes'
Bundle 'kien/ctrlp.vim'
" vim main plugins
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'sjl/gundo.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-unimpaired'

" rarely used bundles


" vim language bundles
Bundle 'rodjek/vim-puppet'
Bundle 'chase/vim-ansible-yaml'

" experimental bundles 

" Store pathogen itself in bundle/
runtime! bundle/pathogen/autoload/pathogen.vim

silent! call pathogen#infect()
silent! call pathogen#helptags()

" change the mapleader from \ to ,
let mapleader=","

" Every Buffer can be hidden
set hidden

" use only Spaces
set expandtab

" indent with two spaces
set tabstop=2
set shiftwidth=2

" native indent detection
set autoindent
set smartindent

" activate language detection
filetype plugin indent on

" Syntax & Color
syntax on 
set t_Co=256
colorscheme candyman 

" Show LineNumbers
set number

" - http://statico.github.io/vim.html
:set incsearch
:set ignorecase
:set smartcase
:set hlsearch
":nmap ,s :nohlsearch<CR>
":nmap ,S :set hlsearch<CR>

" buffer movement
nnoremap <leader>n :bnext<CR>
nnoremap <leader>b :bprev<CR>
nnoremap <leader>e :b#<CR>

" Tab movement
"nnoremap <leader>n :tabnext<CR>
"nnoremap <leader>b :tabprevious<CR>

" Nerdtree Bindings
nnoremap <leader>t  :NERDTreeToggle<CR>

" Autoload NERDTree if no file is specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" airline Settings
set laststatus=2

" Toggle Pastemode
set pastetoggle=<F2>
":nmap ,p :set paste<CR>
":nmap ,P :set nopaste<CR>

" Gundo Bindings
nnoremap <F5> :GundoToggle<CR>

" unimpaired-vim Bindings
nmap < [
nmap - ]

" open vimrc
nnoremap <leader>v :e ~/.vimrc<CR>
nnoremap <leader>V :tabnew ~/.vimrc<CR>

" Syntastic check 
nnoremap <leader>l :SyntasticCheck<CR>

" reload all open buffers
nnoremap <leader>ra :tabdo exec "windo e!"<CR>

" map next-previous jumps ?!
"nnoremap <leader>m <C-o> 
"nnoremap <leader>. <C-i>
