" Enable syntax on
syntax on


""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self
au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return
au FileType python inoremap <buffer> $i import
au FileType python inoremap <buffer> $p print
au FileType python inoremap <buffer> $f # --- <esc>a
au FileType python map <buffer> <leader>1 /class
au FileType python map <buffer> <leader>2 /def
au FileType python map <buffer> <leader>C ?class
au FileType python map <buffer> <leader>D ?def

augroup python_CMD
    autocmd Filetype python setlocal tabstop=4 |set softtabstop=4|set shiftwidth=4|set textwidth=79|set expandtab|set autoindent|set fileformat=unix
    autocmd Filetype python setlocal formatoptions-=t
    autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum,) foldmethod=expr
    autocmd BufWinLeave *.py setlocal foldexr< foldmethod<
    autocmd BufNewFile *.py  call HeaderPython()
    autocmd Filetype python setlocal colorcolumn=80
    highlight ColorColumn ctermbg=5
augroup END

" Python Header
function! HeaderPython()
    call setline(1, '#!/usr/bin/env python3')
    call append(1, '# -*- coding:utf-8 -*-')
    call append(2, '# Writen by Lianghong'.strftime('%Y-%m-%d %T', localtime()))
    call append(3, '')
    call append(4, '')
    cal cursor(5,0)
endf

""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <C-t> $log();<esc>hi
au FileType javascript imap <C-a> alert();<esc>hi

au FileType javascript inoremap <buffer> $r return
au FileType javascript inoremap <buffer> $f // --- PH<esc>FP2xi

function! JavaScriptFold()
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction


""""""""""""""""""""""""""""""
" => Shell section
""""""""""""""""""""""""""""""
if exists('$TMUX')
    if has('nvim')
        set termguicolors
    else
        set term=screen-256color
    endif
endif



""""""""""""""""""""""""""""""
" => Markdown
""""""""""""""""""""""""""""""
let vim_markdown_folding_disabled = 1

" Change vimrc with auto reload
augroup enable_vimrc
    autocmd! BufWritepost ~/.vimrc source %
augroup END
