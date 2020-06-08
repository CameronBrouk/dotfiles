" Hello World
function! SayHello()
	echo 'Hello World!'
endfunction
command! Hello call SayHello()
nnoremap Q :Hello<CR>

" Show Runtime Path
function! ShowRuntimePath()
	echo join(split(&runtimepath, ','), "\n")
endfunction
command! ShowRuntimePath call ShowRuntimePath()
nnoremap Q :ShowRuntimePath<CR>




