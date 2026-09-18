" First launch: install plugins if the plugged dir is empty.
autocmd VimEnter * ++once
      \ if exists(':PlugInstall') && !isdirectory(expand('~/.config/nvim/plugged/coc.nvim')) |
      \   PlugInstall --sync |
      \ endif

" Autosave (Space aw toggles)
let g:muvim_autosave = 1
augroup MuVimAutoSave
  autocmd!
  autocmd CursorHold,CursorHoldI * if get(g:, 'muvim_autosave', 1) | silent! update | endif
augroup END

au BufNewFile,BufRead /*.rasi setf css
au BufNewFile,BufRead /*.html set filetype=html
"au BufNewFile,BufRead /*.html set filetype=htmldjango

" Auto-close pop up helpers
autocmd CompleteDone * if !pumvisible() | pclose | endif

" coc
autocmd FileType scss setl iskeyword+=@-@
au FileType css,scss let b:prettier_exec_cmd = "prettier-stylelint"

" Disable these options just when Kite is installed
" and running with vim

"autocmd FileType go let b:coc_suggest_disable = 1
"autocmd FileType python let b:coc_suggest_disable = 1
"autocmd FileType javascript let b:coc_suggest_disable = 1
command! -nargs=0 Prettier :CocCommand prettier.formatFile

