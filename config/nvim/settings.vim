set number " Line numbers
set relativenumber
set mouse=a " Enable your mouse
set clipboard=unnamedplus " Copy paste between vim and everything else
set noshowmode

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

""" Nerd tree
let NERDTreeQuitOnOpen=1

""" Syntastic
let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']
