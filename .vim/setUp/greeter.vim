" Startify greeter: Current's mark, kept as one block, centered in X and Y.
let s:muvim_header = [
      \ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      \ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡆⡆⠀⠀⠀⠀⠀⢀⠜⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      \ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠁⢰⠀⠀⠀⠀⢀⠊⢠⠀⠀⢠⠀⠀⠀⠀⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      \ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠀⠀⡆⠀⠀⠠⠃⠀⡘⠀⠀⡘⠀⠀⠀⠀⡘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      \ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⢰⠀⡰⠁⠀⠀⠇⠀⠀⡇⠀⠀⠀⢀⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      \ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⠀⠀⠀⠀⠞⠀⠀⠀⠰⠀⠀⢰⠑⠤⠤⠔⠱⠀⣿⡆⠀⠀⠀⣾⡗⠀⠀⠰⣿⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      \ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡌⠀⠀⠀⠀⠀⠀⠸⣿⡄⠀⣸⣿⠁⠀⣴⣶⣶⡄⠀⠀⢰⣦⣶⣤⣴⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      \ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣷⢠⣿⠇⠀⠀⠀⠀⣿⡇⠀⠀⢸⣿⠀⣿⡏⠈⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      \ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⡟⠀⠀⠀⠀⠀⣿⡇⠀⠀⢸⣿⠀⣿⡇⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      \ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠿⠁⠀⠀⠀⠀⠀⠿⠿⠿⠀⠸⠟⠀⠻⠇⠀⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      \ ]

function! s:IsArtBlank(c) abort
  return a:c ==# ' ' || a:c ==# nr2char(0x2800)
endfunction

" Crop the whole drawing to one rectangle so Mu and vim stay aligned.
function! s:TightHeader(lines) abort
  let mincol = 9999
  let maxcol = 0
  let nonempty = []
  for line in a:lines
    let n = strchars(line)
    let first = -1
    let last = -1
    let i = 0
    while i < n
      let c = strcharpart(line, i, 1)
      if !s:IsArtBlank(c)
        if first < 0
          let first = i
        endif
        let last = i
      endif
      let i += 1
    endwhile
    if first >= 0
      let mincol = min([mincol, first])
      let maxcol = max([maxcol, last])
      call add(nonempty, line)
    endif
  endfor
  if maxcol < mincol
    return a:lines
  endif
  let out = []
  for line in nonempty
    call add(out, strcharpart(line, mincol, maxcol - mincol + 1))
  endfor
  return out
endfunction

function! s:CenterStartify() abort
  let art = s:TightHeader(s:muvim_header)
  let maxw = 0
  for line in art
    let maxw = max([maxw, strdisplaywidth(line)])
  endfor
  let left = max([0, (&columns - maxw) / 2])
  " Current's alpha greeter uses 2 rows of padding above the mark.
  let header = repeat([''], 2)
  for line in art
    call add(header, repeat(' ', left) . line)
  endfor
  call add(header, '')
  let g:startify_custom_header = header
  let g:startify_padding_left = left
  " Startify does not always pad section titles; bake the same indent in.
  let g:startify_lists = [
        \ { 'type': 'commands', 'header': [repeat(' ', left) . 'Commands'] },
        \ ]
endfunction

let g:startify_commands = [
      \ { 'f': ['Find files', ':Files'] },
      \ { 'n': ['File tree', ':NERDTreeToggle'] },
      \ { 'g': ['Git status', ':Git'] },
      \ ]

call s:CenterStartify()
augroup MuVimStartify
  autocmd!
  autocmd VimEnter * ++nested call s:CenterStartify()
  autocmd VimResized * call s:CenterStartify() | if &filetype ==# 'startify' | silent! Startify | endif
augroup END
