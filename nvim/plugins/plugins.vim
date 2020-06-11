packadd minpac
call minpac#init()
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()
command! PackStatus call minpac#status()

call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-unimpaired') " useful binds 
call minpac#add('tpope/vim-scriptease', {'type': 'opt'})
call minpac#add('tpope/vim-surround') " binds for surround text objects
call minpac#add('tpope/vim-commentary') " binds for commenting shit out
call minpac#add('tpope/vim-eunuch') " EX commands for bash File IO
call minpac#add('junegunn/fzf.vim') " Fuzzy Search
call minpac#add('bling/vim-bufferline') " Show buffers underneath the status line
call minpac#add('neoclide/coc.nvim') " Bring VScode like plugin system to Vim(Intellisence/Linting/etc)
call minpac#add('jiangmiao/auto-pairs') " Automatically create extra bracket/quote/paren paris
call minpac#add('morhetz/gruvbox') " Theme
call minpac#add('easymotion/vim-easymotion') " Easy Motion 
call minpac#add('peitalin/vim-jsx-typescript') " TSX integration


" Show Runtime Path
function! ShowRuntimePath()
	echo join(split(&runtimepath, ','), "\n")
endfunction
command! ShowRuntimePath call ShowRuntimePath()
