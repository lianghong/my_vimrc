" Key mapping

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
cmap w!! %!sudo tee > /dev/null % " map w!! to sudo save

" Make j and k work the way you expect
nnoremap j gj
nnoremap k gk
vnoremap j gj

" Remap VIM 0 to first non-blank character
map 0 ^

" Emacs-style start of line / end of line navigation
nnoremap <silent> <C-a> ^
nnoremap <silent> <C-e> $
vnoremap <silent> <C-a> ^
vnoremap <silent> <C-e> $
inoremap <silent> <C-a> <esc>^i
inoremap <silent> <C-e> <esc>$i

" Emacs-style line cutting
nnoremap <silent> <C-k> d$
vnoremap <silent> <C-k> d$
inoremap <silent> <C-k> <esc>d$i

" Emacs-style start of file / end of file navigation
nnoremap <silent> <M-<> gg
nnoremap <silent> <M->> G$
vnoremap <silent> <M-<> gg
vnoremap <silent> <M->> G$
inoremap <silent> <M-<> <esc>ggi
inoremap <silent> <M->> <esc>G$i

" Fixes common typos
command! W w
command! Q q

" Easy splitted window navigation
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l

" Splits ,v and ,h to open new splits (vertical and horizontal)
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j

"   Copy
map <Leader>y "+y
"   Paste
map <Leader>p "+p

" C-c and C-v - Copy/Paste to global clipboard
vmap <C-c> "+yi
imap <C-v> <esc>"+gpi

" Map <C-S> to clear highlight
nnoremap <silent> <C-S> :nohlsearch<CR><C-L>

