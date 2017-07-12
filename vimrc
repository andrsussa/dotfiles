" Leader
let mapleader = " "

set backspace=2   " Backspace deletes like most programs in insert mode
set nocompatible
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=500
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set hlsearch!     " Highlight searching
set ignorecase    " Ignore case in searching
set smartcase     " Ignore previous command to include case
set ttyfast
set lazyredraw

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

filetype plugin indent on

" colorscheme 3dglasses
colorscheme fruity
set encoding=utf-8  " Necessary to show Unicode glyphs

" Highlight line number of where cursor currently is
" hi CursorLineNr guifg=#050505

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

  autocmd BufReadPost fugitive://* set bufhidden=delete



  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile *.prog set filetype=asm

  " Automatically wrap at 72 characters and spell check git commit messages
  autocmd FileType gitcommit setlocal textwidth=72
  autocmd FileType gitcommit setlocal spell

  " Compile python with F5
  autocmd FileType python nnoremap <buffer> <F5> :exec '!python' shellescape(@%, 1)<cr>

  " Compile C++ with F4
  autocmd FileType cpp nnoremap <buffer> <F4> :make!<cr>
  autocmd FileType cpp nnoremap <buffer> <F5> :!./%<<cr>
augroup END


" Octave syntax 
augroup filetypedetect 
  au! BufRead,BufNewFile *.m,*.oct set filetype=octave 
augroup END 

" Tabs configuration
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Numbers
set number
set numberwidth=5
set relativenumber

" Persistent undo
set undodir=~/.vim/undo/
set undofile
set undolevels=1000
set undoreload=10000

" Fuzzy finder: ignore stuff that can't be opened, and generated files
let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**"

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Leader Mappings
"map <Space> <leader>
"map <Leader>w :update<CR>
"map <Leader>q :qall<CR>
"map <Leader>gs :Gstatus<CR>
"map <Leader>gc :Gcommit<CR>
"map <Leader>gp :Gpush<CR>

" Toggle nerdtree with F10
map <F10> :NERDTreeToggle<CR>
" Current file in nerdtree
map <F9> :NERDTreeFind<CR>

"key to insert mode with paste using F2 key
map <F2> :set paste<CR>i
" Leave paste mode on exit
au InsertLeave * set nopaste

" Remove highligted by SPACE
nnoremap <space> :noh<return><esc>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" configure syntastic syntax checking to check on open as well as save
"let g:syntastic_ruby_checkers = ['mri']
"let g:syntastic_enable_highlighting=0
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" Autocomplete with dictionary words when spell check is on
set complete+=kspell

" Always use vertical diffs
set diffopt+=vertical

" Show your current git branch
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

let &path.="src/include,/usr/include/AL,"

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
