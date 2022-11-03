" vim: ~/vimrc
" nvim: ~/.config/nvim/init.vim
syntax enable

" set langmenu=en_US.UTF-8
" let $LANG = 'en_US.UTF-8'

set ruler
set title
set number
set showmatch
set showmode
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set showcmd

set autoindent
" set smartindent " only for C
set tabstop=2
set shiftwidth=2
set expandtab

" set nowrap
set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[,]

set nowrapscan
set hlsearch
set ignorecase
set smartcase

" remove trailing white space
aug space
  au!
  " autocmd BufWritePre *.c,*.py :%s/\s\+$//e
  " autocmd BufWritePre *.* :%s/\s\+$//e
  autocmd BufWritePre * :%s/\s\+$//e
aug END


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" netrw
let g:netrw_preview=1 " 1: プレビューウィンドウを垂直分割で表示する
let g:netrw_altv=1 " 1: 分割ウィンドウを(左ではなく)右に開くようにする
let g:netrw_liststyle=3 " ツリー表示。brew install だとパッチが必要(vim8,nvim共通)
" 0: thin listing (一行に 1 つのファイル)
" 1: long listing (一行に 1 つのファイル、タイムスタンプ、ファイルサイズ)
" 2: wide listing (一行に複数のファイル)
" 3: tree style listing (ツリー表示)

"""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/vim/vim/pull/3609#issuecomment-843448876
" runtime/autoload/netrw: Correct symlink handling in tree liststyle #3609
"
" For those who install Vim via Homebrew (Mac) and want to use this fix already, you can have Homebrew build Vim from source with this patch applied like so:
"
" brew edit vim
" Add these four lines to the file (not sure if order matters, I put them above the install block):
" patch do
"   url "https://patch-diff.githubusercontent.com/raw/vim/vim/pull/3609.diff"
"   # sha256 "be474766e32ff81bbb9882a4e373f0a945623039d65ede1b36da72cba2de4f72"
"   sha256 "eeafe27ff5ce6fcec5518b590a6ae18ab170dbf9b868d17d74dbeeb5e3b0f3b0"
" end
" brew reinstall --build-from-source vim


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" quickrun
silent! nmap <unique> ,r <Plug>(quickrun)

let g:quickrun_config = {}
let g:quickrun_config.cpp = { 'command': 'g++', 'cmdopt': '-std=c++11' }


