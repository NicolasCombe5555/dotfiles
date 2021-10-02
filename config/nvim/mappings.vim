" I hate escape more than anything else
inoremap jj <Esc>

" Go to the beginning of the line
nmap <C-a> <ESC>^
imap <C-a> <ESC>I

" Go to the end of the line
nmap <C-e> <ESC>$
imap <C-e> <ESC>A

" Use control-c instead of escape
nnoremap <C-c> <Esc>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Quickly insert an empty new line without entering insert mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

""" https://www.youtube.com/watch?v=hSHATqh8svM

" Number 5: Behave Vim
nnoremap Y y$

" Number 3: Undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u

" Number 1: Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Extra from comments: Easy replace
nnoremap cn *``cgn
nnoremap cN *``cgN
