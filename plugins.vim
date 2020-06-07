"Install plugin via vim-plug
" Automatic installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.vim/plugged')

"Color theme
Plug 'gosukiwi/vim-atom-dark'
"Plug 'morhetz/gruvbox'
"Plug 'kiddos/malokai.vim'
Plug 'joshdick/onedark.vim'

" Fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"Full path fuzzy file, buffer, mru, tag
Plug 'ctrlpvim/ctrlp.vim'

"File Manager
Plug 'scrooloose/nerdtree'

" nerdcommenrter, commenting code
"Plug 'preservim/nerdcommenter'

" vim-commentary, commentary
Plug 'tpope/vim-commentary'

" Status line
Plug 'itchyny/lightline.vim'

" Syntax highlighting
Plug 'sheerun/vim-polyglot'

" Asynchronous Lint Engine
Plug 'w0rp/ale'

" plugin on GitHub repo
Plug 'tpope/vim-fugitive'

" Python autocomplete
"Plug 'davidhalter/jedi-vim'
"Plug 'Valloric/YouCompleteMe', { 'do': 'python3 install.py --clang-completer --ts-completer --rust-completer --go-completer'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" python indentation style
Plug 'Vimjas/vim-python-pep8-indent'

" Automatically sort python imports
Plug 'fisadev/vim-isort'

" Autopep8 automatically formats Python code
Plug 'tell-k/vim-autopep8'

" Python Virtualenv
Plug 'jmcantrell/vim-virtualenv'

" indentLine, display the indention levels
Plug 'Yggdroot/indentLine'

" auto-pair, insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

" ctrlp, Fuzzy file, buffer, mru, tag, etc finder.
Plug 'kien/ctrlp.vim'

" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

"Rust
Plug 'rust-lang/rust.vim'

"Golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Surround parentheses, brackets, quotes, XML tags
Plug 'tpope/vim-surround'

" Folding
Plug 'Konfekt/FastFold'

" Initialize plugin system
call plug#end()
