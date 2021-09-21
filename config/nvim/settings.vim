set number " Line numbers
set relativenumber
set mouse=a " Enable your mouse
set clipboard=unnamedplus " Copy paste between vim and everything else

highlight LineNr ctermfg=grey

au! BufWritePost $MYVIMRC source % " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

let mapleader=" "

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
