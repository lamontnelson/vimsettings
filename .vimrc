call pathogen#infect()
call pathogen#helptags()

"Filetype
set filetype=on
filetype plugin on
filetype indent on

"Show line number
set number
set hlsearch

set ai
set ts=4
set sts=4
set et
set sw=4
set textwidth=0

set t_Co=256
colorscheme desert256
syntax on
highlight Pmenu ctermbg=27 guibg=#0066FF ctermfg=255 guifg=#EEEEEE gui=bold cterm=bold

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

" CSS (tab width 2 chr)
autocmd FileType css set sw=2
autocmd FileType css set ts=2
autocmd FileType css set sts=2

" Javascript (tab width 2 chr)
autocmd FileType javascript set sw=4
autocmd FileType javascript set ts=4
autocmd FileType javascript set sts=4
autocmd FileType javascript set expandtab
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

" Ruby
autocmd FileType ruby set sw=2
autocmd FileType ruby set ts=2
autocmd FileType ruby set sts=2
autocmd FileType ruby set expandtab

autocmd FileType eruby set sw=2
autocmd FileType eruby set ts=2
autocmd FileType eruby set sts=2
autocmd FileType eruby set expandtab

" Setup OmniCompletion
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

set wildmenu
set wildmode=list:longest

set ignorecase
set smartcase

set title

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

let g:NERDTreeDirArrows=0

"Incremental search
set incsearch

autocmd vimenter * NERDTree
autocmd vimenter * wincmd l

nnoremap <C-T> :FufFile **/<CR>

if has('gui_running')
   if has('gui_macvim')
       set guifont=Monaco:h18
   else
       set guifont=Monaco\ 14
   end
end
