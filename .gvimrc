" -----------------------------------------------------------
"  GRAPHICAL
" -----------------------------------------------------------

set anti
set guioptions=gemc

set background=dark
colorscheme solarized

" map ToggleBG to F5
call togglebg#map("<F5>")

" -----------------------------------------------------------
"  Mappings
" -----------------------------------------------------------

if has("gui_macvim")
  " Command-Return to toggle full screen mode
  macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>

  " Start Ack with Command-Shift-F
  map <D-F> :Ack<space>

  " Start Command-T with ... Command-T
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CommandT<CR>
endif

