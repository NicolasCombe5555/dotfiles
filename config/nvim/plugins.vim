" curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree' " File Explorer
Plug 'christoomey/vim-tmux-navigator' " Switch between tabs
Plug 'easymotion/vim-easymotion' " play around with this
Plug 'jiangmiao/auto-pairs' " Auto pairs for '(' '[' '{'
Plug 'itchyny/lightline.vim' " Nicer status bar
Plug 'vim-airline/vim-airline' " Status bar helper
Plug 'tpope/vim-fugitive' " Git helper
Plug 'tpope/vim-rhubarb' " Github browser
Plug 'tpope/vim-commentary' " Easier comments - gcc
Plug 'ryanoasis/vim-devicons' " Icons
Plug 'yggdroot/indentline' " Shows indentation
Plug 'junegunn/fzf' " Find  things
Plug 'junegunn/fzf.vim' " Find  things
Plug 'liuchengxu/vim-which-key' " Remember leader + mappings

call plug#end()

let NERDTreeQuitOnOpen=1
