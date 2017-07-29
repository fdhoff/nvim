"set default charset
set encoding=utf-8
set termencoding=utf-8

set hidden

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

" disable .swap files
set noswapfile

" autoreload files
set autoread

" indentation
set autoindent
set copyindent
set ts=2                " number of spaces in a tab
set sw=2                " number of spaces for indent
set et
"set tabstop=2
"set shiftwidth=2

" highlight settings
set incsearch
set hlsearch
set ignorecase
set smartcase

" enable syntax highlight
filetype plugin indent on
syntax on

" prevent vim from adding that stupid empty line at the end of every file
set noeol
set binary

" presentation settings
set number              " precede each line with its line number
set numberwidth=3       " number of culumns for line numbers
set textwidth=0         " Do not wrap words (insert)
set nowrap              " Do not wrap words (view)
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ruler               " line and column number of the cursor position
set wildmenu            " enhanced command completion
set visualbell          " use visual bell instead of beeping
set laststatus=2        " always show the status line
set list listchars=tab:>-,trail:.,extends:>
set list

" highlight spell errors
hi SpellErrors guibg=red guifg=black ctermbg=red ctermfg=black

" terminal true colors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:t_Co=256
let g:molokai_original=1

" decreasing updatetime
set updatetime=250

" making clipboard systemwide
set clipboard=unnamed
set sessionoptions=buffers

" Colorschemes
colorscheme molokai
set colorcolumn=100
autocmd BufWritePre * :%s/\s\+$//e

" load bundles
source ~/.config/nvim/bundles.vim
" load bundles config
source ~/.config/nvim/plugins.vim
" load key bindings
source ~/.config/nvim/bindings.vim

set et|retab
