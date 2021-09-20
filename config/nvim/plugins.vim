" curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree' " File Explorer
Plug 'christoomey/vim-tmux-navigator' " Switch between tabs
Plug 'easymotion/vim-easymotion' " play around with this
Plug 'jiangmiao/auto-pairs' " Auto pairs for '(' '[' '{'
Plug 'itchyny/lightline.vim' " Nicer status bar
Plug 'airblade/vim-gitgutter' " Git +-
Plug 'vim-airline/vim-airline' " Status bar helper
Plug 'tpope/vim-fugitive' " Git helper
Plug 'scrooloose/nerdcommenter'
Plug 'yggdroot/indentline'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'

call plug#end()

let NERDTreeQuitOnOpen=1

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>gs :G<CR>
