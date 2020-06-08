packadd minpac
call minpac#init()
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()
command! PackStatus call minpac#status()

call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-scriptease', {'type': 'opt'})
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-commentary')
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('ianks/vim-tsx')
call minpac#add('junegunn/fzf.vim')
call minpac#add('bling/vim-bufferline')
call minpac#add('neoclide/coc.nvim')
call minpac#add('jiangmiao/auto-pairs')
call minpac#add('morhetz/gruvbox')



