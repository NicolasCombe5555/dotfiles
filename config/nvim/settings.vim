set number " Line numbers
set relativenumber
set mouse=a " Enable your mouse
set clipboard=unnamedplus " Copy paste between vim and everything else

au! BufWritePost $MYVIMRC source % " Auto source when writing to init.vm alternatively you can run :source $MYVIMRC
au FileType * set fo-=o " Avoid annoying " if creating new lines after a comment

""" Colors 
set termguicolors
set background=dark
colorscheme gruvbox

""" Nerd tree
let NERDTreeQuitOnOpen=1

""" Syntastic
let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']
