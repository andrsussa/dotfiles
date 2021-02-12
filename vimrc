set encoding=utf-8

scriptencoding utf-8

""" General
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'wakatime/vim-wakatime'
Plugin 'preservim/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'sheerun/vim-polyglot'
Plugin 'itchyny/lightline.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'liuchengxu/vista.vim'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required

" Work around CVE-2019-12735.
set nomodeline
set noshowmode

""" Whitespace, indentation, etc.
set sw=4 et "shiftwidth expandtab
set softtabstop=-1
set ts=8 "tabstop
set nosmartindent
set cin noai "cindent noautoindent
set tw=60 cc=60 "textwidth colorcolumn
set nojoinspaces
set formatoptions=cloqr

""" Text manipulation
set bs=indent,eol,start
set completeopt=menu,preview
let mapleader=";"

" Don't synchronize Vim's unnamed register with system clipboard.
set clipboard=

""" Text alignment
""" http://vim.wikia.com/wiki/Regex-based_text_alignment
command! -nargs=? -range Align <line1>,<line2>call AlignSection('<args>')
function! AlignSection(regex) range
  let extra = 1
  let sep = empty(a:regex) ? '=' : a:regex
  let maxpos = 0
  let section = getline(a:firstline, a:lastline)
  for line in section
    let pos = match(line, ' *'.sep)
    if maxpos < pos
      let maxpos = pos
    endif
  endfor
  call map(section, 'AlignLine(v:val, sep, maxpos, extra)')
  call setline(a:firstline, section)
endfunction

function! AlignLine(line, sep, maxpos, extra)
  let m = matchlist(a:line, '\(.\{-}\) \{-}\('.a:sep.'.*\)')
  if empty(m)
    return a:line
  endif
  let spaces = repeat(' ', a:maxpos - strlen(m[1]) + a:extra)
  return m[1] . spaces . m[2]
endfunction

" Make Y consistent with D (i.e. D : d$ :: Y : y$)
nmap <unique> Y y$

""" Navigation
set nofoldenable
set foldmethod=marker
if v:version >= 703
    set relativenumber
endif
set number
set numberwidth=3
set nostartofline

autocmd CmdwinEnter * setlocal norelativenumber
autocmd CompleteDone * pclose

" Sane searching
set hlsearch
set incsearch
set visualbell
set smartcase ignorecase
nnoremap <space> :noh<return><esc>

" Save searches
set viminfo+=/200

" Use tab for %
nnoremap <unique> <tab> %
vnoremap <unique> <tab> %

" Quicker window movement
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap <unique> ts :split<SPACE>
nnoremap <unique> tv :vsplit<SPACE>
nnoremap <unique> tc <C-W>c
set splitbelow splitright

" search and replace under cursor
nnoremap <Leader>r :%s/\<<C-r><C-w>\>/

""" File management
set autowrite

" Don't hide any files from completion.
set wildignore=

""" Display
set nowrap
set ruler
set laststatus=2
set list
set listchars=
set listchars+=precedes:<,extends:>
set listchars+=tab:⇥\ 
set sidescroll=5
set scrolloff=5
set shortmess=a     " Abbreviate status line
set shortmess+=tToO " Other crap

let loaded_matchparen = v:true

" Terminal window title
set title
set titlestring=%t
set titleold=

""" Spelling
set spellcapcheck=

""" Command line
set wildmenu
set wildmode=longest,full

" Save history
set history=10000
set viminfo+=:10000

""" Terminal
" Treat undercurl as underline.
set t_Cs= t_Ce=

" Handle <ESC> immediately in insert mode. Wait indefinitely for incomplete
" mappings.
set esckeys
set notimeout ttimeout ttimeoutlen=0
set showcmd

""" Syntax hilighting
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif
filetype on
filetype indent on
filetype plugin on

colorscheme fruity

let c_space_errors=1
let c_no_comment_fold=1
let c_no_if0_fold=1

set concealcursor=nv

augroup vimrcEx
  autocmd!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Automatically wrap at 72 characters and spell check git commit messages
  autocmd FileType gitcommit setlocal textwidth=72
  autocmd FileType gitcommit setlocal spell

  " Compile python with F5
  autocmd FileType python nnoremap <buffer> <F5> :exec '!python' shellescape(@%, 1)<cr>

  " Compile C++ with F4
  autocmd FileType cpp nnoremap <buffer> <F4> :make!<cr>
  autocmd FileType cpp nnoremap <buffer> <F5> :!./%<<cr>
  autocmd FileType cpp nnoremap <buffer>K :JbzCppMan<CR>
augroup END

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Persistent undo
set undodir=~/.vim/undo/
set undofile
set undolevels=1000
set undoreload=10000

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 1
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>ge :YcmCompleter GoToDefinitionElseDeclaration<CR>

" NERDCommenter options
let g:NERDCustomDelimiters = { 'less': { 'left': '// ', 'right': '', 'leftAlt': '/* ', 'rightAlt': ' */' }, 'javascript': { 'left': '// ', 'right': '', 'leftAlt': '/* ', 'rightAlt': ' */' } }

function! s:JbzCppMan()
    let old_isk = &iskeyword
    setl iskeyword+=:
    let str = expand("<cword>")
    let &l:iskeyword = old_isk
    execute 'Man ' . str
endfunction
command! JbzCppMan :call s:JbzCppMan()
runtime ftplugin/man.vim

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

" lightline config
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'gitbranch', 'method' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'method': 'NearestMethodOrFunction'
      \ },
      \ }

" Support fish shell
set shell=/bin/bash

" Must be last.  Forgot why.
set exrc secure
