let mapleader=" "

syntax enable
set foldmethod=indent 
set foldlevelstart=99 " don't fold shit on file open

" Set Color Theme - don't know what this shit does
colorscheme gruvbox
set background=dark
let g:gruvbox='256'
let g:gruvbox_improved_strings='1'
let g:gruvbox_improved_warnings='1'

" Tabs
" ------------------------
set shiftwidth=2 " when shifting, indent with two spaces
set softtabstop=2
set expandtab " convert tab to space

" Search
" ------------------------
set hlsearch " enable search highlighting
set ignorecase " ignore case when searching
set smartcase " automatically switch search to case-sensitive when the search contains an uppercase letter
set scrolloff=1 " number of screen lines to keep above/below cursor
set nowrap
set title " set the windows title, reflecting the file currently being edited

" Line Numbers
" ------------------------
set number " add line numbers
" Change Color 
highlight LineNr ctermfg=blue

" Cursor 
" ------------------------
"  Terminal Mode
highlight! link TermCursor Cursor
highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15
