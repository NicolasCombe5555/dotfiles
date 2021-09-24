" curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')

Plug 'liuchengxu/vim-which-key' " Remember leader + mappings
Plug 'sheerun/vim-polyglot' " hi

Plug 'mhinz/vim-startify' " Start screen
Plug 'scrooloose/nerdtree' " File Explorer
Plug 'easymotion/vim-easymotion' " Searching
Plug 'junegunn/fzf' " Find  things
Plug 'junegunn/fzf.vim' " Find  things
Plug 'christoomey/vim-tmux-navigator' " Switch between tabs

Plug 'itchyny/lightline.vim' " Nicer status bar
Plug 'vim-airline/vim-airline' " Status bar helper
Plug 'ryanoasis/vim-devicons' " Icons

Plug 'tpope/vim-fugitive' " Git helper
Plug 'tpope/vim-rhubarb' " Github browser

Plug 'tpope/vim-commentary' " Easier comments
Plug 'jiangmiao/auto-pairs' " Auto pairs for '(' '[' '{'
Plug 'yggdroot/indentline' " Shows indentation

call plug#end()

let NERDTreeQuitOnOpen=1
