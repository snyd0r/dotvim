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
:nmap <C-e> :e#<CR>

" Tab movement
"nnoremap <leader>n :tabnext<CR>
"nnoremap <leader>b :tabprevious<CR>

" Nerdtree Bindings
nnoremap <leader>t  :NERDTreeToggle<CR>

" Autoload NERDTree if no file is specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" CTRL-P Bindings
" :let g:ctrlp_map = '<Leader>t'
:let g:ctrlp_match_window_bottom = 0
:let g:ctrlp_match_window_reversed = 0
:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
:let g:ctrlp_working_path_mode = 0
:let g:ctrlp_dotfiles = 0
:let g:ctrlp_switch_buffer = 0

" airline Settings
set laststatus=2

" Toggle Pastemode
set pastetoggle=<F2>
":nmap ,p :set paste<CR>
":nmap ,P :set nopaste<CR>

" Gundo Bindings
nnoremap <F5> :GundoToggle<CR>

" unimpaired-vim Bindings
" nmap + [
" nmap - ]
nnoremap <leader>c :cnext<CR>
nnoremap <leader>C :cprev<CR>

" open vimrc
nnoremap <leader>v :e ~/.vim/vimrc<CR>
nnoremap <leader>V :tabnew ~/.vim/vimrc<CR>

" Syntastic check
nnoremap <leader>l :SyntasticCheck<CR>

" reload all open buffers
nnoremap <leader>ra :tabdo exec "windo e!"<CR>

" find/remove trailing whitespaces
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

" Save write protected file
cmap w!! w !sudo tee % >/dev/null

" More usefull quickbindings
nnoremap <leader>c :close<CR>
nnoremap <leader>w :write<CR>

" change Bracket to something useful
nnoremap ü <C-]>
nnoremap Ü <C-O>

" map next-previous jumps ?!
"nnoremap <leader>m <C-o>
"nnoremap <leader>. <C-i>

" Find Whitespaces
":highlight ExtraWhitespace ctermbg=red guibg=red
" The following alternative may be less obtrusive.
":highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
" Try the following if your GUI uses a dark background.
:highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen

" Show trailing whitespace:
:match ExtraWhitespace /\s\+$/

" Show trailing whitespace and spaces before a tab:
:match ExtraWhitespace /\s\+$\| \+\ze\t/

" Show tabs that are not at the start of a line:
:match ExtraWhitespace /[^\t]\zs\t\+/

" Show spaces used for indenting (so you use only tabs for indenting).
:match ExtraWhitespace /^\t*\zs \+/

" Switch off :match highlighting.
:match
:nnoremap <Leader>sw :match ExtraWhitespace /^\s* \s*\<Bar>\s\+$/<CR>
:nnoremap <Leader>cw :match<CR>
