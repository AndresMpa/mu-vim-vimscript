""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""FUNCTION"""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! ToggleAutoSave()
  let g:muvim_autosave = !get(g:, 'muvim_autosave', 1)
  echo g:muvim_autosave ? 'autosave on' : 'autosave off'
endfunction

function! GitOnCurrentBranch(action)
  let branch = trim(system('git branch --show-current'))
  if a:action ==# 'pull'
    execute 'Git pull origin ' . branch
  elseif a:action ==# 'push'
    execute 'Git push origin ' . branch
  endif
endfunction

function! HelpMapping()
  let maps = execute('map <leader>')
  let maps .= "\n" . execute('nmap U')
  let maps .= "\n" . execute('nnoremap <C-t>')
  belowright 16new
  setlocal buftype=nofile bufhidden=wipe noswapfile nobuflisted
  setlocal nowrap
  file [muvim-maps]
  call setline(1, split(maps, "\n"))
  nnoremap <buffer> <silent> q :bd!<CR>
endfunction

" Note: I took this function from https://github.com/nschurmann/configs/blob/master/.vim/maps.vim

" Function
function! OpenTerminal()
  " move to right most buffer
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")

  if bufType == "terminal"
    " close existing terminal
    execute "q"
  else
    " open terminal
    execute "vsp term://zsh"

    " turn off numbers
    execute "set nonu"
    execute "set nornu"

    " toggle insert on enter/exit
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    " set maps inside terminal buffer
    execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

    startinsert!
  endif
endfunction

function! OpenFileServer()
  let extention = expand('%:e')
  execute "echo extention"

  "Markdown Preview
  if extention == "md"
    execute "normal \<Plug>MarkdownPreviewToggle"
  endif

  "Preview html files
  if extention == "html"
    execute ":Bracey"
  endif

  " Execute python
  if extention == "py"
    execute "!python %"
  endif

  "Execute node
  if extention == "js"
    execute "!node %"
  endif

  "Execute node
  if extention == "sh"
    execute "!bash %"
  endif
endfunction

function! OpenServer(flag)
  let message="Starting a developer server for: "
  execute "echo message"
  execute "echo a:flag"

  " Execute django server
  if a:flag == "django"
    execute ":terminal python manage.py runserver"
  endif

  "Start vue project
  if a:flag == "vue"
    execute ":terminal pnpm run serve"
  endif

endfunction

function! TriggerIdentation()
  let extention = expand('%:e')
  let biome = ['js', 'jsx', 'ts', 'tsx', 'json', 'css', 'graphql', 'gql']

  if extention == "sh"
    execute ":Shfmt"
  elseif index(biome, extention) >= 0
    call CocAction('format')
  else
    execute ":Prettier"
  endif
endfunction
