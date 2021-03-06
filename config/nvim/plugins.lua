-- curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
-- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/

local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/vim/plugged')


Plug 'liuchengxu/vim-which-key' -- Remember leader + mappings
Plug 'mhinz/vim-startify' -- Start screen

Plug 'scrooloose/nerdtree' -- File Explorer
Plug 'junegunn/fzf' -- Find  things
Plug 'junegunn/fzf.vim' -- Find  things
Plug 'airblade/vim-rooter' -- Helper to root to git root
Plug 'christoomey/vim-tmux-navigator' -- Switch between tabs

Plug 'gruvbox-community/gruvbox' -- colorscheme
Plug 'itchyny/lightline.vim' -- status bar
Plug 'ryanoasis/vim-devicons' -- Icons
Plug 'kyazdani42/nvim-web-devicons' -- icons for barbar
Plug 'romgrk/barbar.nvim' -- tabtab

Plug 'tpope/vim-fugitive' -- Git helper
Plug 'tpope/vim-rhubarb' -- Github browser
Plug 'nvim-lua/plenary.nvim' -- dependency for gitsigns
Plug 'lewis6991/gitsigns.nvim' -- Git signs

Plug 'tpope/vim-commentary' -- Easier comments
Plug 'jiangmiao/auto-pairs' -- Auto pairs for '(' '[' '{'
Plug 'yggdroot/indentline' -- Shows indentation

Plug 'neovim/nvim-lspconfig' -- LSP
Plug 'sheerun/vim-polyglot' -- hi
Plug 'hrsh7th/nvim-compe' -- Completions

Plug 'iamcco/diagnostic-languageserver' -- npm i -g diagnostic-languageserver
Plug 'creativenull/diagnosticls-configs-nvim' -- Linters
Plug 'folke/trouble.nvim' -- Diagnostics

Plug 'ThePrimeagen/vim-be-good' -- Practice - be fast


vim.call('plug#end')



-- Setup
require('gitsigns').setup {
    keymaps = {}
}
