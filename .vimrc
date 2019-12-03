" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'


" Initialize plugin system
call plug#end()

set laststatus=2
execute pathogen#infect()
call pathogen#helptags()

" Mapping
map <C-n> :NERDTreeToggle<CR>

set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab
set nu
set rnu
