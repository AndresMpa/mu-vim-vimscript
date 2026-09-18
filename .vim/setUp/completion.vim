" coc
autocmd FileType json syntax match Comment +\/\/.\+$+
" Biome (JS/TS/JSON/CSS), Prettier (HTML/MD), Volar (Vue 3), tsserver, Go
let g:coc_global_extensions = [
  \'coc-biome',
  \'coc-prettier',
  \'coc-emmet',
  \'coc-html',
  \'coc-css',
  \'coc-json',
  \'coc-tsserver',
  \'coc-volar',
  \'coc-sh',
  \'coc-go']

" UltiSnips
" Here are the snippets if you need more you can write them here
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<d-tab>"

let g:snipMate = { 'snippet_version': 1 }

" vim-closetag
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

" Kite
"let g:kite_supported_languages = ['javascript', 'python', 'go']
