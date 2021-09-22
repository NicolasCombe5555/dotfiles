set number " Line numbers
set relativenumber
set mouse=a " Enable your mouse
set clipboard=unnamedplus " Copy paste between vim and everything else

hi LineNr ctermfg=grey
hi MatchParen ctermbg=white ctermfg=black

au! BufWritePost $MYVIMRC source % " auto source when writing to init.vm alternatively you can run :source $MYVIMRC


