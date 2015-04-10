" -----------------------------------------------------------
"  GRAPHICAL
" -----------------------------------------------------------

set anti
set guioptions=gemc

colorscheme solarized
set background=dark

" Fix vim-gitgutter sign-column contrast issue with Solarized theme
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green guifg=darkgreen
highlight GitGutterChange ctermfg=yellow guifg=darkyellow
highlight GitGutterDelete ctermfg=red guifg=darkred
highlight GitGutterChangeDelete ctermfg=yellow guifg=darkyellow

" map ToggleBG to F5
call togglebg#map("<F5>")

if has('gui_running')
  set guifont=DejaVu\ Sans\ Mono\ for\ Powerline

  " vim-airline
  let g:airline_powerline_fonts = 1
endif

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

