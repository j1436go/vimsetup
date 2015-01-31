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
" execute search as i type
set incsearch
" highlight all matches
set hlsearch
" case insensitive search
set ignorecase
" keep cursor centered all of the time
set scrolloff=999
" override the 'ignorecase' option if the search pattern contains upper case characters
set smartcase
" always have a status line
set laststatus=2
" map leader to space
let mapleader = "0"
" shotcut for writing
nnoremap <Leader>w :w<CR>
" shortcut for quitting
nnoremap <Leader>q :q<CR>
" shortcut for opening the explorer
nnoremap <Leader>e :Explore<CR>
" shortcut for commandT fuzzy search
nnoremap <Leader>r :CommandT<CR>
" shortcut for  emmet completion
let g:user_emmet_leader_key='<Leader><Tab>'
" use jk to leave insert mode
ino jk <Esc>
" map colon to comma
nnoremap , :
" change backup directories to ~/.vim
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
" remapping of umlauts
map ö [
map ä ]
map Ö {
map Ä }
" GO specific settings
let g:go_fmt_command = "goimports"
" Sniputil completion and navigation
let g:UltiSnipsExpandTrigger = "<Leader>a"
let g:UltiSnipsJumpForwardTrigger = "<Leader>a"
