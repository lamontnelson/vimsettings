call pathogen#infect()
call pathogen#helptags()

"Filetype
set filetype=on
filetype plugin on
filetype indent on

"Show line number
set number

set ai
set ts=4
set sts=4
set et
set sw=4
set textwidth=79

colorscheme desert
highlight Pmenu guibg=#BACDFF guifg=#403D3D gui=bold

au InsertLeave * hi Cursor guibg=red
au InsertEnter * hi Cursor guibg=green

" HTML (tab width 2 chr, no wrapping)
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sts=2
autocmd FileType html set textwidth=0
" XHTML (tab width 2 chr, no wrapping)
autocmd FileType xhtml set sw=2
autocmd FileType xhtml set ts=2
autocmd FileType xhtml set sts=2
autocmd FileType xhtml set textwidth=0
" CSS (tab width 2 chr, wrap at 79th char)
autocmd FileType css set sw=2
autocmd FileType css set ts=2
autocmd FileType css set sts=2

" Setup OmniCompletion
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"Incremental search
set incsearch

autocmd vimenter * NERDTree
