" curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')
Plug 'liuchengxu/vim-which-key' " Remember leader + mappings

Plug 'mhinz/vim-startify' " Start screen
Plug 'scrooloose/nerdtree' " File Explorer
Plug 'easymotion/vim-easymotion' " Searching
Plug 'junegunn/fzf' " Find  things
Plug 'junegunn/fzf.vim' " Find  things
Plug 'christoomey/vim-tmux-navigator' " Switch between tabs

Plug 'morhetz/gruvbox' " colorscheme
Plug 'vim-airline/vim-airline' " status bar helper
Plug 'vim-airline/vim-airline-themes' " status bar themes
Plug 'ryanoasis/vim-devicons' " Icons

Plug 'tpope/vim-fugitive' " Git helper
Plug 'tpope/vim-rhubarb' " Github browser

Plug 'tpope/vim-commentary' " Easier comments
Plug 'jiangmiao/auto-pairs' " Auto pairs for '(' '[' '{'
Plug 'yggdroot/indentline' " Shows indentation

Plug 'neovim/nvim-lspconfig' " LSP
Plug 'sheerun/vim-polyglot' " hi
Plug 'vim-scripts/Syntastic'

Plug 'ThePrimeagen/vim-be-good' " Practice - be fast

call plug#end()

colorscheme gruvbox
set background=dark
