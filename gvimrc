"Just in case gvim does not source ~/.vimrc
source ~/.vimrc

"Remove ToolBar in gvim
set guioptions-=T

"GVim mappings
map <D-/> <Leader>c<Space><CR>
map <silent> <D-M> :TagbarToggle<CR>
map <silent> <D-N> :NERDTreeToggle<CR>
map <silent> <D-r> :call ReformatContents()<CR>

function ReformatContents()
    normal ggVG=
    %s/\s\+$//e
endfunction


