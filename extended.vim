"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GUI related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T     " No Toolbar
    set guioptions=m  " KeepMenubar
    " Disable scrollbars (real hackers don't use scrollbars for navigation!)
    set guioptions-=r
    set guioptions-=R
    set guioptions-=l
    set guioptions-=L

    " Visual selection automatically copied to the clipboard
    set guioptions+=a
    set guioptions-=e
    set guitablabel=%M\ %t
    set mouseshape=n:up-arrow " pencil, leftright
    set lines=40 columns=90 linespace=2

    " Paste from a windows or from vim
    set paste
        try
          colorscheme onedark
    catch
    endtry

    if exists("+lines")
        set lines=50
      endif
      if exists("+columns")
        set columns=100
      endif
endif

" Set font according to system
if has("gui_macvim")
    set gfn=Menlo\ Regular:h14,Source\ Code\ Pro:h15,Menlo:h15
elseif has("gui_win32") || has("win32")
    set gfn=Consolas:h11,Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("gui_gtk2") || has ("gui_gtk3")
    set gfn=Ubuntu\ Mono\ 16,Source\ Code\ Pro\ 16,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("linux")
    set gfn=Monospace\ 16,Source\ Code\ Pro\ 16,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("unix")
    set gfn=Monospace\ 14
endif
