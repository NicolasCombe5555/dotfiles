" Line numbers
set number 
set relativenumber

" Better search
set ignorecase
set smartcase

set noshowmode
set clipboard=unnamedplus " Copy paste between vim and everything else
set mouse=a " Enable your mouse

" Tabs vs spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

au! BufWritePost $MYVIMRC source % " Auto source when writing to init.vm alternatively you can run :source $MYVIMRC
au FileType * set fo-=o " Avoid annoying " if creating new lines after a comment

""" Status bar
let g:lightline = {
	\ 'active': {
		\   'left': [ [ 'mode' ], [ 'gitbranch', 'filename' ] ],
		\   'right': [ [ 'lineinfo' ], [ 'filetype', 'percent' ], [ 'fileencoding' ] ]
	\ },
  \ 'component_function': {
    \   'gitbranch': 'FugitiveHead'
  \ },
\ }

""" Colors 
set termguicolors
set background=dark
colorscheme gruvbox
