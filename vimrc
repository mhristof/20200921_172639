set nocompatible              " be iMproved, required
filetype off                  " required

" initial checkout
"    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim.git'

Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'benwainwright/fzf-switch-project'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"  Instal all with
"  	vim +PluginInstall +qall
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:fzfSwitchProjectWorkspaces = [ '~/code']
let g:fzfSwitchProjectAlwaysChooseFile = 0
