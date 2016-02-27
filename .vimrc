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
Plugin 'fatih/vim-go'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'rust-lang/rust.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'

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
nnoremap <silent><F7> :NERDTreeToggle<CR>

command GitDiff execute "!echo gitdiff; git diff"
command GitDiffCached execute "!git diff --cached"
command GitShow execute "!git show" 
nnoremap <silent><F9> :GitDiff

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <space> za

"nnoremap <silent> <F8> :TlistToggle<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <silent> <F7> :NERDTreeToggle<CR>

function ClangFormatFile() 
  let l:lines="all"
  pyf /usr/local/bin/clang-format.py
endfunction
noremap <leader>cf :call ClangFormatFile()<CR>
noremap <leader>cs :%!astyle --style=google --indent=spaces=2 --max-code-length=80<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99

let g:ycm_extra_conf_globlist = ['.ycm_extra_conf.py']
let g:ycm_confirm_extra_conf = 0

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

autocmd FileType html
	\ set ts=4
	\ sts=4
	\ sw=4
	\ textwidth=0
	\ expandtab 
	\ autoindent 
	\ fileformat=unix 

autocmd FileType css
	\ set ts=2
	\ sts=2 
	\ sw=2
	\ textwidth=79 
	\ expandtab 
	\ autoindent 
	\ fileformat=unix 

autocmd FileType javascript
	\ set ts=4
	\ sts=4
	\ sw=4
	\ textwidth=79 
	\ expandtab 
	\ autoindent 
	\ fileformat=unix 

autocmd FileType ruby
	\ set ts=2
	\ sts=2 
	\ sw=2
	\ textwidth=79 
	\ expandtab 
	\ autoindent 
	\ fileformat=unix 

autocmd FileType python
	\ set ts=4 
	\ sts=4 
	\ sw=4 
	\ textwidth=79 
	\ expandtab 
	\ autoindent 
	\ fileformat=unix 

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

let g:ycm_server_keep_logfiles=1
let g:NERDTreeDirArrows=1
let Tlist_Use_Right_Window = 1
let Tlist_Auto_Open = 0 
