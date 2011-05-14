" -----------------------------------------------------------
"  GRAPHICAL
" -----------------------------------------------------------

set anti
set guioptions=gemc
colorscheme ir_black

" -----------------------------------------------------------
"  Ack
" -----------------------------------------------------------

" Start Ack with Command-Shift-T
if has("gui_macvim")
  macmenu &File.Open\ Tab\.\.\. key=<nop>
  map <D-T> :Ack<space>
endif

