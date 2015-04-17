set nocompatible

" load all bundles located in ~/vim/bundle
execute pathogen#infect()

" use visual notification instead of beep
set visualbell

" activate syntax specific indentation and highlighting
syntax on

" default font
set guifont=Source\ Code\ Pro\ Extralight:h13

" show command in the last line of vim
set showcmd

filetype plugin on

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

" shotcut for writing
nnoremap <Leader>w :w<CR>

" map search to f
nnoremap f /

" replace mapping
nnoremap F :%s//g<Left><Left>

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

" tagbar toggle
nmap <Leader>t :TagbarToggle<CR>

" go-vim specific settings
let g:go_fmt_command = "goimports"

" disable syntastic for go
let g:syntastic_go_checker = ''

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

" ignore directives for command t plugin
let g:CommandTWildIgnore=&wildignore . "**/bower_components/*,**/node_modules/*,**/vendor/*,**/components/*"

" neocomplete config
source ~/.vim/.neocomplete

" these need to direvtives need to be executed as autocmd since they override
" macvim defaults.

" disable syntax highlighting. 
au VimEnter * syntax off

au VimEnter * set autoindent

au VimEnter * set smartindent
