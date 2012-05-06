set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'tpope/vim-fugitive'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdcommenter'
"Bundle 'sjl/gundo.vim'

Bundle 'tpope/vim-endwise'
Bundle 'sjl/gundo.vim'
Bundle 'IndexedSearch'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/syntastic'

Bundle 'tpope/vim-markdown'
Bundle 'vim-ruby/vim-ruby'
Bundle 'othree/xml.vim'
" Bundle 'tpope/vim-ragtag'

Bundle 'godlygeek/csapprox'
Bundle 'L9'
" Bundle 'FuzzyFinder'

filetype plugin indent on     " required!

"source all includes
source ~/.vim/includes/commandline.vim
source ~/.vim/includes/statusline.vim
source ~/.vim/includes/keymaps.vim
source ~/.vim/includes/layout.vim
source ~/.vim/includes/plugins-settings.vim

"source project specific config files
runtime! ~/.vim/projects/**/*.vim

" MISC
"
"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2
