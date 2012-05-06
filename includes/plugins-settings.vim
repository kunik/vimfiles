"REQUIRE: syntastic, snipmate, taglist, nerdtree, CSApprox

"syntastic settings
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2

"taglist settings
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'

let Tlist_Compact_Format = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_WinWidth = 35
let tlist_php_settings = 'php;c:class;f:Functions'
let Tlist_Use_Right_Window=1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Display_Tag_Scope = 1
let Tlist_Process_File_Always = 1
let Tlist_Show_One_File = 1

"nerdtree settings
let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 40

"dont load csapprox if we no gui support - silences an annoying warning
if !has("gui")
    let g:CSApprox_loaded = 1
endif

"http://vimcasts.org/episodes/fugitive-vim-browsing-the-git-object-database/
"hacks from above (the url, not jesus) to delete fugitive buffers when we
"leave them - otherwise the buffer list gets poluted
"
"add a mapping on .. to view parent tree
autocmd BufReadPost fugitive://* set bufhidden=delete
autocmd BufReadPost fugitive://*
  \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
  \   nnoremap <buffer> .. :edit %:h<CR> |
  \ endif

"spell check when writing commit logs
autocmd filetype svn,*commit* setlocal spell
