" incsearch
let g:incsearch#auto_nohlsearch = 1 " Remove the highligth after search

" NERDTree
let NERDTreeMouseMode=1             " let you use the mouse
let NERDTreeQuitOnOpen=1            " quit nerdtree when you open a file
let NERDTreeShowHidden=1            " show files or dir hidden by '.'
let g:NERDTreeWinPos = "right"      " file tree on the right; terminal stays left

" fzf
" FZF will keep the history here
let g:fzf_history_dir = '~/.local/share/fzf-history'
" Options while opening files with FZF
let g:fzf_action = {
  \ 'ctrl-o': 'tab split',
  \ 'ctrl-v': 'vsplit',
  \ 'ctrl-s': 'split'
  \}
" Floating modal in the middle of the window (not a side split).
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true } }

" Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
