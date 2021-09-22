let g:startify_custom_header = [
\ '| | | | __ _  ___| | _____ _ __',
\ '| |_| |/ _` |/ __| |/ / _ \ __|',
\ '|  _  | (_| | (__|   <  __/ |',
\ '|_| |_|\__,_|\___|_|\_\___|_|',
\]

let g:startify_lists = [
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ ]

let g:startify_bookmarks = [
            \ { 'g': '~/.gitconfig' },
            \ { 'z': '~/.zshrc' },
            \ '~/.config/nvim',
            \ ]

let g:startify_enable_special = 0
