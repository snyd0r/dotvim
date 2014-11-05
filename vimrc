call pathogen#infect()
call pathogen#helptags()

" Every Buffer can be hidden
set hidden

" use only Spaces
set expandtab

" indent with two spaces
set tabstop=2
set shiftwidth=2

" nativ indent detection
set autoindent
set smartindent

" activate language detection
filetype plugin indent on

" Syntax & Color
syntax on 
set t_Co=256
colorscheme delek

" Show LineNumbers
set number

" - http://statico.github.io/vim.html
:set incsearch
:set ignorecase
:set smartcase
:set hlsearch
:nmap ,s :nohlsearch<CR>
:nmap ,S :set hlsearch<CR>

" buffer movement
:nmap ,n :bnext<CR>
:nmap ,b :bprev<CR>
:nmap ,e :b#<CR>

" syntastic bindings 
:nmap ; :CtrlPBuffer<CR>

" Nerdtree Bindings
:nmap ,t :NERDTreeToggle<CR>

" Powerline Settings
set laststatus=2
