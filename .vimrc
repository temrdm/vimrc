set nocompatible
filetype off 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Workspace style plugins
set laststatus=2
set t_Co=256
colorscheme koehler
Bundle 'bling/vim-airline'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'

" Workspace configure plugins
Bundle 'Shougo/vimproc.vim'
Bundle 'scrooloose/nerdtree'
    map <C-y> :NERDTreeToggle<CR>
    let NERDTreeIgnore = ['\.pyc$']
Bundle 'Valloric/YouCompleteMe'
Bundle 'mhinz/vim-signify'
Bundle 'terryma/vim-multiple-cursors'
    let g:multi_cursor_next_key='<C-n>'
    let g:multi_cursor_prev_key='<C-p>'
    let g:multi_cursor_skip_key='<C-x>'
    let g:multi_cursor_quit_key='<Esc>'

Bundle 'gregsexton/MatchTag'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Shougo/unite.vim'
    nnoremap <C-p> :Unite -start-insert file_rec/async<cr>
    nnoremap <space>/ :Unite grep:.<cr>
    nnoremap <space>s :Unite -quick-match buffer<cr>
    let g:unite_source_file_rec_ignore_pattern = '\.\%(pyc\|png\|jpg\)$'

Bundle 'mattn/emmet-vim'
    let g:user_emmet_leader_key='<C-Z>'
Bundle 'marijnh/tern_for_vim'
    autocmd BufEnter * set completeopt-=preview
Bundle 'kchmck/vim-coffee-script'
Bundle 'othree/html5.vim'
Bundle 'skammer/vim-css-color'

" Editor settings
filetype plugin indent on
syntax on
set background=dark
set nu

set encoding=utf8
set termencoding=utf-8
set fileencodings=utf8,cp1251
set wrap 
set linebreak 
set autoindent
set smartindent
set smarttab

set expandtab 
set shiftwidth=4 
set softtabstop=4 
set tabstop=4 

autocmd FileType coffee setlocal softtabstop=2 tabstop=2 shiftwidth=2 expandtab foldnestmax=1
autocmd FileType javascript setlocal softtabstop=2 tabstop=2 shiftwidth=2 expandtab foldnestmax=1

autocmd FocusLost * :wa 

vmap <Tab> > gv
vmap <S-Tab> < gv

set guioptions-=m 
set guioptions-=T
set guioptions-=r 

command! W :w

set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>
set wildmode=full             " <Tab> cycles between all matching choices.
set showcmd

set ls=2  "Always show status line"

set ruler

set hidden

set nolazyredraw
set showmatch

set ignorecase              " Default to using case insensitive searches,
set smartcase               " unless uppercase letters are used in the regex.
set smarttab                " Handle tabs more intelligently
set hlsearch                " Highlight searches by default.
set incsearch               " Incrementally search while typing a /regex

set backspace=indent,eol,start

set nobackup
set noswapfile

