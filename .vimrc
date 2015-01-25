set nocompatible
" load all bundles located in ~/vim/bundle
execute pathogen#infect()
set hidden
" use visual notification instead of beep
set visualbell
" show command in the last line of vim
set showcmd
" syntax highlighting
syntax on
" font setting
set guifont=Source\ Code\ Pro\ for\ Powerline:h12
" enable plugins for specific filetypes
filetype indent plugin on
" show the line we're currently in
set cursorline
set notimeout ttimeout ttimeoutlen=200
" keep cursor in the same column
set nostartofline
" switch between paste mode with F2
set pastetoggle=<F2>
set autoindent
set smartindent
" set t_Co=256
" enable the sharing of osx's and vim's clipboard
set clipboard=unnamed
colorscheme monokai
set shiftwidth=4
set tabstop=4
set omnifunc=syntaxcomplete#Complete
" enable line numbers
set number
" set relative numbers in insert mode
" autocmd InsertEnter * :set number
" autocmd InsertLeave * :set relativenumber
" execute search as i type
set incsearch
" highlight all matches
set hlsearch
" case insensitive search
set ignorecase
" Override the 'ignorecase' option if the search pattern contains upper case characters
set smartcase
" always habe a status line
set laststatus=2
" map leader to space
let mapleader = " "
" use map leader w,q to quickly save and exit files
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>e :Explore<CR>
nnoremap <Leader>r :CommandT<CR>
let g:user_emmet_leader_key='<Leader><Tab>'
" use jk to leave insert mode
ino jk <Esc>
" map colon to comma
nnoremap , :
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
" autocmd FileType less set omnifunc=csscomplete#CompleteCSS
" autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" open NERDTree on every launch
" autocmd vimenter * if !argc() | NERDTree | endif
autocmd VimEnter *  Tagbar
" change backup directories to ~/.vim
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
" remapping of umlauts
map ö [
map ä ]
map Ö {
map Ä }
" GO specifig settings
let g:go_fmt_command = "goimports"
