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

  " Control-Option to switch viewports
  map <C-M-Up> <C-w>k
  imap <C-M-Up> <Esc> <C-w>k
  map <C-M-Down> <C-w>j
  imap <C-M-Down> <Esc> <C-w>j
  map <C-M-Right> <C-w>l
  imap <C-M-Right> <Esc> <C-w>l
  map <C-M-Left> <C-w>h
  imap <C-M-Left> <C-w>h

  " Command-Option-ArrowKey to switch tabs
  map <D-M-Right> :tabnext<CR>
  imap <D-M-Right> <Esc>:tabnext<CR>
  map <D-M-Left> :tabprevious<CR>
  imap <D-M-Right> <Esc>:tabnext<CR>
endif

