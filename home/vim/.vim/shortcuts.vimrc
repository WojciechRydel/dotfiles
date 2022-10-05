" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

nmap <silent> <leader>q :quit<CR>
nmap <silent> <leader>w :write<CR>


nnoremap <C-P> :FZF<CR>
nnoremap <leader>. :Tags<CR>
nnoremap <leader>b :Git blame<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>s :setlocal spell!<CR>
