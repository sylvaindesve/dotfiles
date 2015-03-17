" First of all, start Pathogen magic
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" ---------------------------------------------------------------------------
" General
" ---------------------------------------------------------------------------

set nocompatible                  " VIM mode (not VI)
set confirm                       " Raise a dialog instead of sending errors
set fileformats=unix,dos,mac      " End of line format
set encoding=utf-8                " Encoding is UTF8
filetype plugin indent on         " Load plugin and indent settings based on
                                  " file type
set iskeyword+=_,$,@,%,#,-        " None word dividers
set autoread                      " Reload files

" ---------------------------------------------------------------------------
" Colors and themes
" ---------------------------------------------------------------------------

" When using GUI, turn syntax highlighting on
if has("gui_running")
  syntax on
endif

" ---------------------------------------------------------------------------
" Trailing whitespace and tabs
" ---------------------------------------------------------------------------

set list listchars=tab:\ \ ,trail:·

" ---------------------------------------------------------------------------
" Backups and swap files
" ---------------------------------------------------------------------------

set backupdir=~/.vim/backup
set directory=~/.vim/backup

" ---------------------------------------------------------------------------
" UI
" ---------------------------------------------------------------------------

set ruler                         " Show the cursor
set noshowcmd                     " Don't show incomplete command
set nolazyredraw                  " Turn off lazy redraw
set number                        " Line numbers
set wildmenu                      " Allow completion in command mode
set wildmode=list:longest,full    " First <Tab> complete to longest common
                                  " string and show list of matches, second
                                  " <Tab> cycle through matches
set cmdheight=2                   " Command line height
set backspace=2                   " Backspace over everything in insert mode
set whichwrap+=<,>,h,l,[,]        " Left and right go to next/previous line
                                  " when at the end/beginning of a line
set report=0                      " Always show messages reporting changes
set nostartofline                 " Don't move cursor to start of line when
                                  " scrolling with Ctrl-D or Ctrl-U

" ---------------------------------------------------------------------------
" Visual
" ---------------------------------------------------------------------------

set showmatch                     " Show matching brace/bracket/parenthese...
set matchtime=5                   " ...for half a second.
set laststatus=2                  " Status line always visible
set incsearch                     " Show search result as it is typed
set nohlsearch                    " Don't highlight searches
set ignorecase                    " Ignore case when searching
set visualbell                    " Don't beep

" ---------------------------------------------------------------------------
" Text formatting
" ---------------------------------------------------------------------------

set autoindent                    " Indent new lines
set smartindent                   " ...smartly
set nowrap
set softtabstop=2                 " Soft tabs = 2 spaces
set shiftwidth=2
set tabstop=4
set expandtab                     " Expand tabs to spaces
set nosmarttab                    " No tabs
set textwidth=80                  " Go to next line if > 80 chars
set virtualedit=block

" ---------------------------------------------------------------------------
" Mappings
" ---------------------------------------------------------------------------

let mapleader = ","

" Edit .vimrc
nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
" Source .vimrc
nnoremap <Leader>sv :source $MYVIMRC<CR>

" TODO file
nnoremap <Leader>o o[ ] 
nnoremap <Leader>O O[ ] 
nnoremap <Leader>x :s/^\[ \]/[x]/<CR>
nnoremap <Leader>X :s/^\[x\]/[ ]/<CR>

" ---------------------------------------------------------------------------
" File types
" ---------------------------------------------------------------------------

autocmd BufRead,BufNewFile Rakefile     setlocal filetype=ruby
autocmd BufRead,BufNewFile Gemfile      setlocal filetype=ruby
autocmd BufRead,BufNewFile *.ru         setlocal filetype=ruby
autocmd BufRead,BufNewFile *.json       setlocal filetype=javascript

autocmd BufRead,BufNewFile *.csv        setlocal textwidth=0

" ---------------------------------------------------------------------------
" NerdTree
" ---------------------------------------------------------------------------

map <Leader>n :NERDTreeToggle<CR>

