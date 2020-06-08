" ========================== GLOBAL KEY BINDS ===========================
" Set Colon to SemiColon and comma to Colon so I don't have to hit Shift
nore ; :
nore , ;

" ========================== TERMINAL KEY BINDS ===========================
" Switch Between Terminal and Normal Mode with Escape key
tnoremap <Esc> <C-\><C-n>

" Allow you to Escape out of programs while in terminal mode with ctrl+v+esc
tnoremap <C-v><Esc> <Esc>

"


" ========================== GREPPER ===========================
" Rip Grep current word
nnoremap <Leader>* :GrepperRg -cword -noprompt<CR>
" use Ripgrep
nnoremap <Leader>g :Grepper -tool rg<CR>


" ========================== Fuzzy Search ===========================
" Remap Fuzzy Search to CTRL P(like vscode and other ides)
nnoremap <silent> <C-p> :call fzf#vim#files('', fzf#vim#with_preview({'options': '--prompt ""'}, 'right:70%'))<CR>
" Remap buffers
nnoremap <silent> <leader>b :Buffers<CR>


" ========================== Comments ===========================
nnoremap gcc <C-/>

" nnoremap :Terminal <C-M-r>
