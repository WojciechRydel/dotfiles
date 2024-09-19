let g:ale_fixers = {
  \'typescript': ['prettier'],
  \'typescriptreact': ['prettier'],
  \'javascript': ['prettier'],
  \'python': ['isort', 'ruff']
\}

let g:ale_linters = {
  \'typescript': ['eslint', 'prettier', 'tslint', 'cspell'],
  \'typescriptreact': ['eslint', 'prettier', 'tslint', 'cspell'],
  \'javascript': ['eslint', 'prettier', 'cspell'],
  \'python': ['ruff', 'mypy', 'cspell'],
\}

let g:ale_fix_on_save = 1
let g:ale_set_highlights = 0
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_format = '%linter% says %code%: %s'
