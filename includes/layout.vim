"choose colorscheme
syntax enable
set background=dark
colorscheme solarized

"set fornt options
if has("gui_running")
    if has("gui_macvim")
        set fuopt+=maxhorz
        set guifont=Monaco:h13
    else
        set guifont=Inconsolata\ Medium\ 14
    endif
endif

"show line numbers
set number

"set default text width
set textwidth=120

if v:version >= 703
    set colorcolumn=+1 "mark the ideal max text width
endif

"display tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

"line wraps
set wrap        "dont wrap lines
set linebreak   "wrap lines at convenient points

"default indent settings
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

"load ftplugins and indent files
filetype plugin on
filetype indent on

"turn on syntax highlighting
syntax on

"tell the term has 256 colors
"set t_Co=256

"hide buffers when not displayed
set hidden

"hilight searches by default
set hlsearch

"highlight cursor line
set cursorline

highlight CursorLine  term=underline  guibg=#222222  cterm=underline
