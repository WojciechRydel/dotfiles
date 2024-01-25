let g:lsp_settings = {
\  'pylsp-all': {
\    'workspace_config': {
\      'pylsp-all': {
\        'configurationSources': ['flake8'],
\        'plugins': {'pyflakes': {'enabled': 0}}
\      }
\    }
\  }
\}

if executable('pylsp')
    " pip install python-lsp-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pylsp-all',
        \ 'cmd': {server_info->['pylsp-all']},
        \ 'allowlist': ['python'],
        \ })
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nnoremap <buffer> <expr><c-f> lsp#scroll(+4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')

" refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

"set foldmethod=expr
  "\ foldexpr=lsp#ui#vim#folding#foldexpr()
  "\ foldtext=lsp#ui#vim#folding#foldtext()

" If you would like to disable folding globally, you can add this to your configuration:
"
" ```vim
" let g:lsp_fold_enabled = 0
" ```
" Also see `:h vim-lsp-folding`.

