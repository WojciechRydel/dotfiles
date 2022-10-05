let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'typescriptreact': ['prettier'],
\}

let g:ale_linters = {
  \'typescript': ['eslint'],
  \'typescriptreact': ['eslint'],
  \'javascript': ['eslint'],
\}

let g:ale_fix_on_save = 1
let g:ale_set_highlights = 0
let g:airline#extensions#ale#enabled = 1
