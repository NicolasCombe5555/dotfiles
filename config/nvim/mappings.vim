" I hate escape more than anything else
inoremap jj <Esc>

" Go to the beginning of the line
nmap <C-a> <ESC>^
imap <C-a> <ESC>I

" Go to the end of the line
nmap <C-e> <ESC>$
imap <C-e> <ESC>A

" TAB in general mode will move to next buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>

" Use control-c instead of escape
nnoremap <C-c> <Esc>

" Better tabbing
vnoremap < <gv
vnoremap > >gv
