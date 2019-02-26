function! RunJestTest()
    let l:path = expand('%:p')
    let l:currentLine = getline('.')

    call job_start(["tmuxjest", l:currentLine, l:path])
endfunction

command RunJestTest :call RunJestTest()

autocmd! FileType python nnoremap <leader>x :terminal python3 %<CR>
autocmd! FileType go nnoremap <silent> <leader>t :terminal go test<CR>
autocmd! FileType javascript nnoremap <leader>x :terminal node %<CR>
autocmd! FileType javascript nnoremap <leader>F :% !prettier %<CR>
autocmd! FileType javascript.jsx nnoremap <leader>F :% !prettier %<CR>
autocmd! FileType json nnoremap <leader>F :% !python -m json.tool %<CR>
autocmd! BufAdd *.spec.js nnoremap <leader>t :RunJestTest<CR>
autocmd! BufAdd *.spec.jsx nnoremap <leader>t :RunJestTest<CR>

