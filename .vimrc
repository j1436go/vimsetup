set nocompatible

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'rking/ag.vim'
Plugin 'junegunn/fzf'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'mattn/emmet-vim'
Plugin 'SirVer/ultisnips'
Plugin 'fatih/vim-go'
Plugin 'leafgarland/typescript-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'j1436go/nofrils'
call vundle#end()

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

" use visual notification instead of beep
set visualbell

" Indent wrapped lines
set breakindent

" use 256 colors in terminal
set t_Co=256

" extend the color scheme's background to the whole terminal
set t_ut=

" color scheme
colorscheme nofrils-dark

" indentation
set autoindent
set smartindent

" Ignores
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/typo3/*

" show command in the last line of vim
set showcmd

" keep cursor in the same column
set nostartofline

" switch between paste mode with F2
set pastetoggle=<F2>

" set shiftwidth=4

" set tabstop=4

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

" keep cursor while scrolling
set scrolloff=10

" override the 'ignorecase' option if the search pattern contains upper case characters
set smartcase

" always have a status line
set laststatus=2

" map leader to space
let mapleader = "0"

" open CtrlP
nnoremap <Leader>r :FZF<CR>

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

" remapping of umlauts to parens / brackets
" ä
imap <Char-196> }
" ö
imap <Char-214> {
" Ä
imap <Char-228> ]
" Ö
imap <Char-246> [

" tagbar toggle
nmap <Leader>t :TagbarToggle<CR>

au FileType go nmap gr <Plug>(go-run)
au FileType go nmap gi <Plug>(go-implements)
au FileType go nmap gb <Plug>(go-build)
au FileType go nmap gt <Plug>(go-test)
au FileType go nmap gi <Plug>(go-implements)

" Sniputil completion and navigation
let g:UltiSnipsExpandTrigger = "<Leader>a"
let g:UltiSnipsJumpForwardTrigger = "<Leader>a"

" this prevents vim from freezing when scrolling out of bounds
set noeb vb t_vb=

" no need to syntax highlight super long lines
set synmaxcol=512

let g:go_fmt_command = "goimports"

" typescript syntax
au BufNewFile,BufRead *.ts set filetype=typescript
