set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
let mapleader=","

noremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
noremap <leader>bb :buffers<CR>
noremap <leader>bs :1sbn<CR>
noremap <leader>bn :1bn<CR>
let g:ycm_extra_conf_globlist = ['.ycm_extra_conf.py']

call pathogen#infect()
call pathogen#helptags()

"Filetype
"set filetype=on
"filetype plugin on
"filetype indent on

"Show line number
set number
set hlsearch

set ai
set ts=4
set sts=4
set noet
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
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS

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

let g:NERDTreeDirArrows=1
