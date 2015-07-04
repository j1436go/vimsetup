set nocompatible
" for vundle
filetype off


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'gmarik/Vundle.vim'
Plugin 'rking/ag.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'vim-scripts/matchit.zip'
Plugin 'Shougo/neocomplete.vim'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'SirVer/ultisnips'
Plugin 'xsbeats/vim-blade'
Plugin 'tpope/vim-fugitive'
Plugin 'fatih/vim-go'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-repeat'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'othree/yajs.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'FelikZ/ctrlp-py-matcher'


" All of your Plugins must be added before the following line
call vundle#end()            
filetype plugin indent on

" use visual notification instead of beep
set visualbell

" activate syntax specific indentation and highlighting
syntax on

" use 256 colors in terminal
"set t_Co=256

" extend the color scheme's background to the whole terminal
set t_ut=

" indentation
set autoindent
set smartindent


" Ignores
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/typo3/*

" Useful CtrlP settings
let g:ctrlp_lazy_update = 350
let g:ctrlp_max_files = 0
" Speed up CtrlP file indexing
let g:ctrlp_user_command = {
  \ 'types': {
    \ 1: ['.git/', 'cd %s && git ls-files'],
    \ },
  \ 'fallback': 'find %s -type f'
  \ }
" Let py-matcher handle matching. faster
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" show command in the last line of vim
set showcmd

filetype plugin indent on

set notimeout ttimeout ttimeoutlen=200

" keep cursor in the same column
set nostartofline

" switch between paste mode with F2
set pastetoggle=<F2>

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

" no special rendering (underline, italic) for html
let html_no_rendering=1

" highlight all matches
set hlsearch

" case insensitive search
set ignorecase

" keep cursor centered all of the time
set scrolloff=10

" override the 'ignorecase' option if the search pattern contains upper case characters
set smartcase

" always have a status line
set laststatus=2

" map leader to space
let mapleader = "0"

" open CtrlP
nnoremap <Leader>r :CtrlP<CR>

" map search to f
nnoremap f /

" replace mapping
nnoremap F :%s//g<Left><Left>

" shortcut for opening the explorer
nnoremap <Leader>e :Explore<CR>

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

" tagbar toggle
nmap <Leader>t :TagbarToggle<CR>

" go-vim specific settings
let g:go_fmt_command = "goimports"

" disable syntastic for go
" let g:syntastic_go_checker = ''

let g:go_auto_type_info=0
au FileType go nmap gr <Plug>(go-run)
au FileType go nmap gi <Plug>(go-implements)
au FileType go nmap gb <Plug>(go-build)
au FileType go nmap gt <Plug>(go-test)
au FileType go nmap gt <Plug>(go-test)
au FileType go nmap gi <Plug>(go-implements)

" Sniputil completion and navigation
let g:UltiSnipsExpandTrigger = "<Leader>a"

let g:UltiSnipsJumpForwardTrigger = "<Leader>a"

autocmd BufNewFile,BufRead *.blade.php set ft=html | set ft=phtml | set ft=blade

" enable neocomplete
let g:neocomplete#enable_at_startup = 1

" neocomplete config
source ~/.vim/.neocomplete

" dont highlight cursor line
set nocursorline

" this prevents vim from freezing when scrolling out of bounds 
set noeb vb t_vb=
