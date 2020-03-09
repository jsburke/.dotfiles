syntax on
:colo koehler
:set tags=./.tags;/
:set hlsearch
vnoremap // y/\V<C-r>=escape(@",'/\')<CR><CR>
autocmd BufNewFile,BufRead *.lds set syntax=ld
autocmd BufNewFile,BufRead *.bsvi set syntax=bsv
autocmd BufNewFile,BufRead *.s65 set syntax=ca65
