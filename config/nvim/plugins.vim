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
Plug 'tpope/vim-commentary' " Easier comments - gcc
Plug 'ryanoasis/vim-devicons' " Icons
Plug 'yggdroot/indentline' " Shows indentation
Plug 'junegunn/fzf' " Find  things
Plug 'junegunn/fzf.vim' " Find  things

call plug#end()

let NERDTreeQuitOnOpen=1

" Easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" Nerdtree
nmap <Leader>nt :NERDTreeFind<CR>

" Fugitive
nmap <Leader>gs :G<CR>

" Fzf
nmap <Leader>ff :GFiles<CR>
nmap <Leader>fc :Commits<CR>
nmap <Leader>rg :Rg! 
