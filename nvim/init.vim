" => Package Manager {{{
"  Skip initialisation for vim-tiny and vim-small
if !1 | finish | endif

if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs 
        \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd  VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/bundle')

Plug 'icymind/NeoSolarized'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': '.install -all' }

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-vinegar'

Plug 'JamshedVesuna/vim-markdown-preview'

call plug#end()
" }}}

" => General {{{
let s:is_nvim = has('nvim')
let s:is_vim = has('vim')
let s:is_windows = has('win32') || has('win64')
let s:is_unix = has('unix')
let s:is_gui_running = has('gui_running')

" Enable filetype plugins
if has('autocmd') | filetype plugin on | filetype indent on | endif

" Set language for all prompts to English
if s:is_windows | silent exec 'language english' | endif

" Set to auto read when a file is changed from the outside
set autoread

" Enable mouse in normal, visual and insert mode
set mouse=a
set background=light

" Specify model for mouse right click
set mousemodel=popup

set cursorline colorcolumn=120
set mat=500

" Line number
set number numberwidth=4

set list listchars=tab:>-,trail:.,nbsp:.

" Set tabwidth and use spaces instead of tabs
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab
" }}}

" => Colours {{{
" Syntax Highlighting and Visual Colouring

syntax enable
set termguicolors
set background=dark
colorscheme gruvbox

let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'

"}}}

