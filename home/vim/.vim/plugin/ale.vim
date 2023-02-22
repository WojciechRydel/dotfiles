let g:ale_fixers = {
  \'typescript': ['eslint', 'prettier', 'tslint'],
  \'typescriptreact': ['eslint', 'prettier', 'tslint'],
  \'javascript': ['eslint', 'prettier'],
  \'python': ['autoflake', 'isort', 'autopep8', 'black', 'ruff']
\}

let g:ale_linters = {
  \'typescript': ['eslint', 'prettier', 'tslint'],
  \'typescriptreact': ['eslint', 'prettier', 'tslint'],
  \'javascript': ['eslint', 'prettier'],
  \'python': ['ruff'],
\}

let g:ale_fix_on_save = 1
let g:ale_set_highlights = 0
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_format = '%linter% says %code%: %s'
