syntax on
:colo koehler
:set tags=./.tags;/
:set hlsearch
autocmd BufNewFile,BufRead *.lds set syntax=ld
autocmd BufNewFile,BufRead *.bsvi set syntax=bsv
:set foldmethod=syntax
