"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"find the next match as we type the search
set incsearch

"ignore case while searching by default
set ignorecase smartcase

"explorer mappings
nnoremap <f2> :NERDTreeToggle<cr>

"make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

"map Q to something useful
noremap Q gq

"make Y consistent with C and D
nnoremap Y y$

if v:version >= 703
    "undo settings
    set undodir=~/.vim/undofiles
    set undofile
endif

set formatoptions-=o "dont continue comments when pushing o/O

" Easy tab navigation.
map <Leader>1 :tabnext 1<CR>
map <Leader>2 :tabnext 2<CR>
map <Leader>3 :tabnext 3<CR>
map <Leader>4 :tabnext 4<CR>
map <Leader>5 :tabnext 5<CR>
map <Leader>6 :tabnext 6<CR>
map <Leader>7 :tabnext 7<CR>
map <Leader>8 :tabnext 8<CR>
map <Leader>9 :tabnext 9<CR>

map <Leader>t :tabnew<CR>

nnoremap <silent> <Leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>

"visual search mappings
function! s:VSetSearch()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
    let @@ = temp
endfunction
vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>


"jump to last cursor position when opening a file
"dont do it when writing a commit log entry
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
    if &filetype !~ 'svn\|commit\c'
        if line("'\"") > 0 && line("'\"") <= line("$")
            exe "normal! g`\""
            normal! zz
        endif
    end
endfunction

