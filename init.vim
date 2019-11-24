call plug#begin('~/.config/nvim/plugged')

" Declare the list of plugins.

" ----------------------------------------------------------------------------
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
" ----------------------------------------------------------------------------
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" ----------------------------------------------------------------------------
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" --------------------------------------------------------------------------
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colo gruvbox

let mapleader = " "
" tabstop:          Width of tab character
" softtabstop:      Fine tunes the amount of white space to be added
" shiftwidth        Determines the amount of whitespace to add in normal mode
" expandtab:        When on uses space instead of tabs
:set tabstop     =4
:set softtabstop =0
:set expandtab
:set shiftwidth  =2
:set smarttab

" NORMAL
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
" Select all
nnoremap <C-a> :%d<CR>
"Prev tab
nnoremap <Leader>h :tabprevious<CR>
" New Tab
nnoremap <Leader>t :tabedit<CR>
" Next tab
nnoremap <Leader>l :tabnext<CR>
" Move to first character of sentence.
nnoremap { ^
vnoremap { ^
" Move to end of line.
nnoremap } $
vnoremap } $
" nerdtree shit
nnoremap <Leader>n :NERDTreeToggle<CR>

" INSERT
inoremap kj <ESC>
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
set nu
