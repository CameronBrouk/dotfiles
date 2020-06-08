" Highlight Cursor in :terminal mode
highlight! link TermCursor Cursor
highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15

" Set Color Theme
colorscheme gruvbox
set background=dark
let g:gruvbox='256'
let g:gruvbox_improved_strings='1'
let g:gruvbox_improved_warnings='1'

syntax enable
set number " add line numbers
set tabstop=2 " indent using two spaces
set shiftwidth=2 " when shifting, indent with two spaces
set softtabstop=2
set expandtab " convert tab to space
set hlsearch " enable search highlighting
set ignorecase " ignore case when searching
set smartcase " automatically switch search to case-sensitive when the search contains an uppercase letter
set scrolloff=1 " number of screen lines to keep above/below cursor
set nowrap
set title " set the windows title, reflecting the file currently being edited




