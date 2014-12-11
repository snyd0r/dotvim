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
Bundle 'vim-scripts/YankRing.vim'
Bundle 'nelstrom/vim-markdown-folding'
" rarely used bundles


" vim language bundles
Bundle 'rodjek/vim-puppet'
Bundle 'chase/vim-ansible-yaml'

" experimental bundles

" Store pathogen itself in bundle/
runtime! bundle/pathogen/autoload/pathogen.vim

silent! call pathogen#infect()
silent! call pathogen#helptags()

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" change the mapleader from \ to ,
let mapleader=","

" use only Spaces
set expandtab

" indent with two spaces
set tabstop=2
set shiftwidth=2

" native indent detection
set autoindent
set smartindent

" set linewrapping
set wrap
set linebreak
set nolist  " list disables linebreak

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
nmap <silent> ,/ :nohlsearch<CR>

" buffer movement
nnoremap <leader>n :bnext<CR>
nnoremap <leader>b :bprev<CR>
nnoremap <leader>e :b#<CR>
nmap <C-e> :e#<CR>

" Every Buffer can be hidden
set hidden

" reload all open buffers
nnoremap <leader>ra :tabdo exec "windo e!"<CR>

" close buffer
nnoremap <leader>bd :bd<CR>

" Nerdtree Bindings
nnoremap <leader>t  :NERDTreeToggle<CR>

" Autoload NERDTree if no file is specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" CTRL-P Bindings
:let g:ctrlp_map = '<Leader>p'
:let g:ctrlp_match_window_bottom = 0
:let g:ctrlp_match_window_reversed = 0
:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
:let g:ctrlp_working_path_mode = 0
:let g:ctrlp_dotfiles = 0
:let g:ctrlp_switch_buffer = 0
nnoremap <leader>ru :CtrlPMRU<CR>

" Toggle Pastemode
set pastetoggle=<F2>

" Gundo Bindings
nnoremap <F5> :GundoToggle<CR>

" Change Brackets to something that works on german keyboards
nmap - [
nmap + ]

" unimpaired-vim Bindings
nnoremap <leader>ü :cnext<CR>
nnoremap <leader>Ü :cprev<CR>

" open vimrc
nnoremap <leader>v :e $MYVIMRC<CR>
nnoremap <leader>V :tabnew $MYVIMRC<CR>

" Syntastic check
nnoremap <leader>l :SyntasticCheck<CR>

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

" airline / tmuxline config
if !exists("g:airline_symbols")
  let g:airline_symbols = {}
endif

set laststatus=2
let g:airline_theme="powerlineish"
let g:airline_powerline_fonts=0
let g:airline_section_warning = airline#section#create([ "syntastic" ])
let g:airline#extensions#branch#empty_message  =  "No SCM"
let g:airline#extensions#whitespace#enabled    =  1
let g:airline#extensions#syntastic#enabled     =  1
let g:airline#extensions#tabline#enabled       =  1
let g:airline#extensions#tabline#tab_nr_type   =  1 " tab number
let g:airline#extensions#tabline#fnamecollapse =  1 " /a/m/model.rb
let g:airline#extensions#hunks#non_zero_only   =  1 " git gutter
let g:tmuxline_powerline_separators = 0

" map next-previous jumps ?!
"nnoremap <leader>m <C-o>
"nnoremap <leader>. <C-i>

" Find Whitespaces
:highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen

" Show trailing whitespace:
":match ExtraWhitespace /\s\+$/
"
"" Show trailing whitespace and spaces before a tab:
":match ExtraWhitespace /\s\+$\| \+\ze\t/
"
"" Show tabs that are not at the start of a line:
":match ExtraWhitespace /[^\t]\zs\t\+/
"
"" Show spaces used for indenting (so you use only tabs for indenting).
":match ExtraWhitespace /^\t*\zs \+/

" Switch off :match highlighting.
:match
:nnoremap <Leader>sw :match ExtraWhitespace /^\s* \s*\<Bar>\s\+$/<CR>
:nnoremap <Leader>cw :match<CR>

" visual reselect of just pasted
nnoremap gp `[v`]

" Yankring bindings 
nnoremap <leader>ys :YRShow<CR>
nnoremap <leader>yc :YRClear<CR>
nnoremap <leader>yt :YRToggle<CR>

" Yaml Settings
let g:ansible_options = {'ignore_blank_lines': 0}

" experimental vimrc commands

" Folding bindings / Space to toggle folds
nnoremap <Space> za
vnoremap <Space> za
