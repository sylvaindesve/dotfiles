" First of all, start Pathogen magic
call pathogen#runtime_append_all_bundles()

" ---------------------------------------------------------------------------
" General
" ---------------------------------------------------------------------------

set nocompatible                  " VIM mode (not VI)
set encoding=utf-8                " Encoding is UTF8
filetype plugin indent on         " Load plugin and indent settings
set isk+=_,$,@,%,#,-              " None word dividers
set autoread                      " Reload files

" ---------------------------------------------------------------------------
" Colors and themes
" ---------------------------------------------------------------------------

if has("gui_running")
  syntax on
endif

" ---------------------------------------------------------------------------
" Trailing whitespace
" ---------------------------------------------------------------------------

set list listchars=tab:\ \ ,trail:·

" ---------------------------------------------------------------------------
" UI
" ---------------------------------------------------------------------------

set ruler                         " Show the cursor
set noshowcmd                     " Don't show incomplete command
set number                        " Line numbers
set ch=2                          " Command line height
set backspace=2                   " Backspace over everything in insert mode

" ---------------------------------------------------------------------------
" VISUAL
" ---------------------------------------------------------------------------

set visualbell                    " Don't beep
set laststatus=2                  " Status line always visible

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
set smarttab                      " No tabs
set textwidth=80                  " Go to next line if > 80 chars

" ---------------------------------------------------------------------------
" Mappings
" ---------------------------------------------------------------------------

let mapleader = ","

" ---------------------------------------------------------------------------
" File types
" ---------------------------------------------------------------------------

au BufRead,BufNewFile Rakefile                        set ft=ruby
au BufRead,BufNewFile Gemfile                         set ft=ruby
au BufRead,BufNewFile *.ru                            set ft=ruby
au BufRead,BufNewFile *.json                          set ft=javascript

