" NOTE:  Plugin Specific Keymaps are located in that plugins config file
"           ex:  fzf, coc
"
" GLobal Keybinds
" ------------------------------------------------------------
" Set Colon to SemiColon and comma to Colon so I don't have to hit Shift
nore ; :
nore , ;


" Terminal Keybinds
" ------------------------------------------------------------
" Switch Between Terminal and Normal Mode with Escape key
tnoremap <Esc> <C-\><C-n>
" Allow you to Escape out of programs while in terminal mode with ctrl+v+esc
tnoremap <C-v><Esc> <Esc>


" Grepper
" ------------------------------------------------------------
" Rip Grep current word
nnoremap <Leader>* :Grepper -tool rg -cword -noprompt<CR>
" use Ripgrep
nnoremap <Leader>g :Grepper -tool rg<CR>


" Fuzzy Search
" ------------------------------------------------------------
" Remap Fuzzy Search File Structure with CTRL P
nnoremap <silent> <C-p> :call fzf#vim#files('', fzf#vim#with_preview({'options': '--prompt ""'}, 'right:70%'))<CR>
" Fuzzy Search Current Buffers with Leader P
nnoremap <silent> <leader>p :Buffers<CR>

" Comments
" ------------------------------------------------------------
"  NOTE:  _ is an alias for /, apparently just using / won't work
nmap <C-_> <Plug>CommentaryLine
vmap <C-_> <Plug>Commentary

" Buffers
" ------------------------------------------------------------
" Close All Buffers But Current
" NOTE:  Currently, this only closes all buffers that are
         " 1: to the right of the current buffer
         " 2: haven't been modified
function! CloseAllBuffersButCurrent()
  let curr = bufnr("%")
  let last = bufnr("$")

  if curr > 1    | silent! execute "1,".(curr-1)."bd"     | endif
  if curr < last | silent! execute (curr+1).",".last."bd" | endif
endfunction

nmap [b :bprevious<CR>
nmap ]b :bnext<CR>
nmap [B :bfirst<CR>
nmap ]B :blast<CR>
" Close All unsaved buffers but current 
" (function is in nvim/functions)
nmap <silent> <Leader>Q :call CloseAllBuffersButCurrent()<CR>
nmap <silent> <Leader>q :bd<CR>

" Navigate Errors
" ------------------------------------------------------------
nmap <silent> [e <Plug>(coc-diagnostic-prev)
nmap <silent> ]e <Plug>(coc-diagnostic-next)

" Easy Motion
" ------------------------------------------------------------
nmap f <Plug>(easymotion-s)

" NERDTree
" ------------------------------------------------------------
map <C-n> :NERDTreeToggle<CR>

" GOTO Code Navigation
" ------------------------------------------------------------
"" If There is Vimdocs for the word under the cursor, show it
" If There is NOT vimdocs, show it's definition in a tooltip
function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
    else
      call CocAction('doHover')
    endif
endfunction

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nnoremap <silent>gh :call <SID>show_documentation()<CR>


               "
