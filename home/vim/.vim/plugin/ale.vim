let g:ale_fixers = {
  \'typescript': ['eslint', 'prettier', 'tslint'],
  \'typescriptreact': ['eslint', 'prettier', 'tslint'],
  \'javascript': ['eslint', 'prettier'],
  \'python': ['add_blank_lines_for_python_control_statements', 'autoflake', 'autoimport', 'autopep8', 'black', 'isort', 'reorder-python-imports', 'yapf']
\}

let g:ale_linters = {
  \'typescript': ['eslint', 'prettier', 'tslint'],
  \'typescriptreact': ['eslint', 'prettier', 'tslint'],
  \'javascript': ['eslint', 'prettier'],
\}

let g:ale_fix_on_save = 1
let g:ale_set_highlights = 0
let g:airline#extensions#ale#enabled = 1
