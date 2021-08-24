""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible                     " disable vi compatibility
set number                           " Line numbers on
set noerrorbells                     " No annoying sound on errors
set ruler                            " Show the ruler
set showcmd                          " Show partial commands in status line
set t_Co=256                         " Enable 256 colors
set showmode                         " Do not display the current mode
set scrolloff=3                      " Keep 3 lines below and above cursor
set history=1000                     " Store a ton of history (default is 20)
set encoding=utf-8 nobomb            " Set UTF-8 without BOM
set clipboard+=unnamed               " Yanks go on clipboard instead
set backspace=indent,eol,start
set fileencodings=utf-8,gbk,gb2312,gb18030,big5,latin1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on                            " Syntax highlighting
colorscheme desert


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nobackup                         " Turn backup off
set nowb
set autoread


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Search
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set hlsearch                         " Highlight search terms
set incsearch                        " Find as you type search
set smartcase                        " Case sensitive when uc present
set ignorecase                       " Case insensitive search


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set tabstop=4                        " An indentation every four columns
set shiftwidth=4                     " Use indents of 4 spaces
set softtabstop=4                    " Let backspace delete indent
set expandtab                        " Tabs are spaces, not tabs
set smartindent                      " Smart indent
set autoindent                       " Auto indent


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Moving with h,j,k,l in insert mode
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-h> <Left>

cmap W w !sudo tee >/dev/null % <CR><CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Automatic Commands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Restore cursor to file position in previous editing session
augroup resCur
    autocmd!
    autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

