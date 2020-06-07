:" General
let mapleader = ","       " Set leader to comma
let maplocalleader = "\\" " local leader to backslash

set nocompatible    " Enable vim features
set encoding=utf-8  " Set character encoding
set fileencoding=utf-8 " The encoding written to file
set fileformat=unix    " Use Unix as the standard file type

filetype on         " Detect filetype
syntax  enable      " Enable syntax hightlighting
filetype plugin on  " Enable loading the plugin
syntax sync fromstart " Sync syntax highlighting from start

set langmenu=en     "
set wildmenu        " Use pop-up menu for tab completion
set wildmode=longest,list:longest,list:full
set complete=.,w,b,u " Make autocomplete faster

set history=100      " keep 50 lines of command line history

set title           " Set the window’s title
set ruler           " Show row and column ruler information
set number          " Show line numbers
set scrolloff=3     " Show 3 lines above or below cursor when scrolling
set sidescrolloff=5 " keep at least 5 columns left/right of cursor
set showmatch       " Highlight matching brace
set matchpairs+=<:> " use % to jump between pairs
set matchtime=3     " How many tenths of a second to blink
set showmode        " Show insert, replace, or visual mode in last line
set modelines=0     " Inspect top/bottom 2 lines for modeline
set nomodeline      " Ignore file’s mode lines; use vimrc configurations instead.

set showcmd         " Show command in last line
set cursorline      " Highlight the line the cursor is on
set cmdheight=2     " Make command line one line high
set nowrap          " Do not wrap long lines
set textwidth=0     " No forced wrapping in any file type (unless overridden)
set linespace=0     " No extra spaces between row//
set hidden          " Hidden buffers

set colorcolumn=81  " Show a colored column at 80 characters
hi ColorColumn ctermbg=lightred guibg=lightgrey

set laststatus=2    " Show status line
set statusline=     " clear the statusline for when vimrc is reloaded

set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

set list            " List hidden chars
"set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set listchars=tab:→\ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set showbreak=↪\

set synmaxcol=1000    " Don't try to highlight lines longer than X

set foldmethod=indent " Fold based on indention levels.
set foldnestmax=3     " Only fold up to three nested levels.
set nofoldenable      " Disable folding by default.

set wildignore+=.pyc,.swp,.git,.DS_Store " Ignore files

set t_Co=256        " Use 256 colors
if (has("termguicolors"))
    set termguicolors   " Set true coloe
endif
set background=dark
try
    colorscheme manni
catch
endtry

set nobackup        " No backup
set nowritebackup
set noswapfile

if has('mouse')
    set mouse+=a     " Enable mouse interaction
endif

"set mousehide       " Turn off mouse pointer when typing begins
"set mouse=c         " Put mouse in command-line mode

if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

if has("spell")
    set spell	        " Enable spell-checking
    set spelllang=en_us
endif

set shortmess=atI   " Shortens messages
set t_vb=
set visualbell	    " Use visual bell (no beeping)
set noerrorbells    " Disable beep on errors.

set gdefault        " Makes search/replace global
set hlsearch        " Highlight all search results
set smartcase       " Enable smart-case search
set ignorecase	    " Always case-insensitive
set incsearch	    " Searches for strings incrementally
set diffopt=filler,iwhite " Ignore all whitespace and sync

if has("gui_macvim")
   " Properly disable sound on errors on MacVim
    autocmd GUIEnter * set vb t_vb= "
endif

nnoremap <Leader><Space> :nohlsearch<CR>  " Turn off search highlight when done

filetype indent on  " Enable loading the indent file
set autoindent      " Auto-indent new lines
set expandtab       " Use spaces instead of tabs
set shiftwidth=4    " Number of auto-indent spaces
set smartindent     " Enable smart-indent
set smarttab        " Enable smart-tabs
set softtabstop=4   " Number of spaces per Tab
set backspace=eol,start,indent  " allow backspacing over indent, eol, & start

" Window Manipulation
set splitright           " create vertical splits to the right
set splitbelow           " create horizontal splits below

"remap window switching to leader then navigation letter
nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>


" Advanced
set complete-=i     " Limit the files searched for auto-completes.
set lazyredraw      " Don't bother redrawing
set confirm         " Prompt confirmation dialogs
set autoread        " watch for file changes by other programs
set autowrite       " Automatically save
set autochdir       " Change working directory to open buffer
set autowriteall    " Auto-write all file changes
set undolevels=1000 " Number of undo levels
set updatetime=300  " Good experience for diagnostic messages
