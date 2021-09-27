" Map leader to which_key
let mapleader=" "
nnoremap <silent> <Leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <Leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Define a separator
let g:which_key_sep = '→'

" not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" create map to add keys to
let g:which_key_map =  {}

" single mappings
let g:which_key_map['/']  = [ 'gcc'                       , 'comment' ]
let g:which_key_map['w']  = [ ':w'                        , 'write' ]
let g:which_key_map['q']  = [ ':q'                        , 'quit' ]
let g:which_key_map['Q']  = [ ':q!'                       , 'quit!' ]
let g:which_key_map['k']  = [ ':m .-2 <CR>=='             , 'mv line up' ]
let g:which_key_map['j']  = [ ':m .+1 <CR>=='             , 'mv line down' ]
let g:which_key_map['x']  = [ ':TroubleToggle'            , 'show warnings']

" barbar - goto buffer in position...
let g:which_key_map['1']  = [ ':BufferGoto 1'                       , 'which_key_ignore' ]
let g:which_key_map['2']  = [ ':BufferGoto 2'                       , 'which_key_ignore' ]
let g:which_key_map['3']  = [ ':BufferGoto 3'                       , 'which_key_ignore' ]
let g:which_key_map['4']  = [ ':BufferGoto 4'                       , 'which_key_ignore' ]
let g:which_key_map['5']  = [ ':BufferGoto 5'                       , 'which_key_ignore' ]
let g:which_key_map['6']  = [ ':BufferGoto 6'                       , 'which_key_ignore' ]
let g:which_key_map['7']  = [ ':BufferGoto 7'                       , 'which_key_ignore' ]
let g:which_key_map['8']  = [ ':BufferGoto 8'                       , 'which_key_ignore' ]
let g:which_key_map['9']  = [ ':BufferLast'                         , 'which_key_ignore' ]

" g is for git
let g:which_key_map.g = {
            \ 'name' : '+git',
            \ 's' : [':G'      								, 'fugitive'],
            \ 'b' : [':Git blame'      						, 'blame'],
            \ 't' : [':Gitsigns toggle_current_line_blame'  , 'toggle line blame'],
            \ 'p' : [':Gitsigns preview_hunk'               , 'previews'],
            \ 'r' : [':Gitsigns reset_hunk'                 , 'resets hunk'],
            \ 'a' : [':Gitsigns stage_hunk'                 , 'stages hunk'],
            \ 'u' : [':Gitsigns undo_stage_hunk'            , 'unstages hunk'],
            \ 'f' : [':diffget //2'      				    , 'take left'],
            \ 'j' : [':diffget //3'      				    , 'take right'],
            \ }

" f is for find
let g:which_key_map.f = {
            \ 'name' : '+find',
            \ 'l' : [':BLines'                  , 'current buffer lines'],
            \ 't' : [':Rg'          	        , 'text Rg'],
            \ 'f' : [':Files'               	, 'files'],
            \ 'g' : [':GFiles'              	, 'git files'],
            \ 'G' : [':GFiles?'                 , 'modified git files'],
            \ 'c' : [':Commits'                 , 'commits'],
            \ 'C' : [':BCommits'            	, 'buffer commits'],
            \ 'H' : [':History:'                , 'command history'],
            \ 'z' : [':FZF'                     , 'FZF']
            \ }

" z is for window because I already have w for write
let g:which_key_map.z = {
            \ 'name' : '+windows',
            \ 'q' : ['<C-W>o'      , 'close all windows but current'],
            \ 'd' : ['<C-W>c'      , 'delete-window'],
            \ '2' : ['<C-W>v'      , 'layout-double-columns'],
            \ 'h' : ['<C-W>h'      , 'window-left'],
            \ 'j' : ['<C-W>j'      , 'window-below'],
            \ 'k' : ['<C-W>k'      , 'window-up'],
            \ 'l' : ['<C-W>l'      , 'window-right'],
            \ 'H' : ['<C-W>5<'     , 'expand-window-left'],
            \ 'J' : [':resize +5'  , 'expand-window-below'],
            \ 'K' : [':resize -5'  , 'expand-window-up'],
            \ 'L' : ['<C-W>5>'     , 'expand-window-right'],
            \ '-' : ['<C-W>s'      , 'split-window-below'],
            \ '|' : ['<C-W>v'      , 'split-window-right']
            \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
