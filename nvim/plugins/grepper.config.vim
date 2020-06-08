" :Grepper is the replacement for the search tab in VsCode.  It lets you
" search files for a pattern
" vim has a :grep command, but is synchronous. :Grepper is a plugin that is Asynchronous
"
" CONFIG
let g:grepper = {}
let g:grepper.tools = ['grep', 'git', 'rg']
