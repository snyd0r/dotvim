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
map <C-n> :bnext<CR>
map <C-b> :bprev<CR>
map <C-e> :b#<CR>

" Tab movement
:nmap ,n :tabnext<CR>
:nmap ,b :tabprevious<CR>

" syntastic bindings 
:nmap ; :CtrlPBuffer<CR>

" Nerdtree Bindings
map <C-t> :NERDTreeToggle<CR>

" Autoload NERDTree if no file is specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Powerline Settings
set laststatus=2

" Toggle Pastemode
:nmap ,p :set paste<CR>
:nmap ,P :set nopaste<CR>
