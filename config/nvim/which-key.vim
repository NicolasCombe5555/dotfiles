" Map leader to which_key
let mapleader=" "
nnoremap <silent> <Leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <Leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Define a separator
let g:which_key_sep = '→'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Create map to add keys to
let g:which_key_map =  {}

" Single mappings
let g:which_key_map['/']  = [ 'gcc'                       , 'comment' ]
let g:which_key_map['w']  = [ ':w'                        , 'write' ]
let g:which_key_map['q']  = [ ':q'                        , 'quit' ]
let g:which_key_map['Q']  = [ ':q!'                       , 'quit!' ]
let g:which_key_map['k']  = [ ':m .-2 <CR>=='             , 'mv line up' ]
let g:which_key_map['j']  = [ ':m .+1 <CR>=='             , 'mv line down' ]

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git',
      \ 's' : [':G'      		, 'fugitive'],
      \ 'b' : [':Git blame'      	, 'blame'],
      \ 'f' : [':diffget //2'      	, 'take left'],
      \ 'j' : [':diffget //3'      	, 'take right'],
      \ }

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search',
      \ 'c' : [':Commits'             	, 'commits'],
      \ 'C' : [':BCommits'            	, 'buffer commits'],
      \ 'f' : [':Files'               	, 'files'],
      \ 'g' : [':GFiles'              	, 'git files'],
      \ 'G' : [':GFiles?'               , 'modified git files'],
      \ 'H' : [':History:'              , 'command history'],
      \ 't' : [':Rg!'          	        , 'text Rg'],
      \ 'z' : [':FZF'                   , 'FZF'],
      \ '2' : ['<Plug>(easymotion-s2)'  , 'search 2 chars'],
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
