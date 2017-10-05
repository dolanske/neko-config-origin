
" Required settings.
set nocompatible
filetype off

" ###    GENERAL VUNDLE INFORMATION     ###
" 
" Install Vundle before doing anything else.
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"
" Once you have installed Vundle you can run the following command.
" vim +PluginInstall +qall
"
" Alternatively you can run the following command inside of vim.
" :PluginInstall
"
" ###                                   ###

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Begin the Vundle plugin preparation.
call vundle#begin()

" Alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" Let Vundle manage Vundle, required.
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Lokaltog/powerline-fonts' "requires the powerline fonts to be installed and activated
Plugin 'Lokaltog/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ap/vim-css-color'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'majutsushi/tagbar'
Plugin 'Chiel92/vim-autoformat'
Plugin 'chriskempson/base16-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'dhruvasagar/vim-table-mode'

if has("python") || has("python3")
    Plugin 'severin-lemaignan/vim-minimap'
     "Plugin 'valloric/YouCompleteMe' "requires running ../install.sh
    Plugin 'Valloric/MatchTagAlways'
endif

" All of your Plugins must be added before the following line.
call vundle#end()

" Required setting.
filetype plugin indent on

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Set the Base16 colorscheme. Make sure that Base16 Shell is installed.
set background=dark
set t_Co=256
let base16colorspace=256
colorscheme base16-default-dark

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

inoremap jk <ESC>
inoremap kj <ESC>

map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>y

" Use soft tabs with width of 4 spaces.
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set softtabstop=4

" Change backspace behavior.
set backspace=indent,eol,start

" Enable line numbers.
set number

" Enable highlighted searching. Press space to disable highlighting.
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

set laststatus=2
set ttimeoutlen=50
set encoding=utf-8

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

syntax on
filetype indent plugin on

let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'php' : 1,
    \}

highlight Pmenu ctermfg=blue ctermbg=black

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = "wombat"

if has('gui_running')
    set guioptions-=T  " no toolbar

    if has('gui_win32')
        set guifont=Inconsolata_for_Powerline:h9:cANSI
    else
        set guifont=Inconsolata\ for\ Powerline\ 9
    endif
endif

" Airline configuration.
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" Indent guide configuration.
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 0
let g:indent_guides_enable_on_vim_startup = 1

