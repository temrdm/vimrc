if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible
  endif
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'bling/vim-airline'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'

NeoBundle 'scrooloose/nerdtree'
    map <C-m> :NERDTreeToggle<CR>
    let NERDTreeIgnore = ['\.pyc$']

NeoBundle 'tpope/vim-surround'

NeoBundle 'mhinz/vim-signify'

NeoBundle 'gregsexton/MatchTag'
NeoBundle 'scrooloose/nerdcommenter'

NeoBundle 'kien/ctrlp.vim'
    let g:ctrlp_working_path_mode = 'ra'
    let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(pyc|jpg|jpeg|png)$',
      \ }

NeoBundle 't9md/vim-smalls'
    nmap <C-s><Plug> (smalls)
    omap <C-s><Plug> (smalls)
    xmap <C-s><Plug> (smalls)

NeoBundle 'vim-scripts/Decho'

NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-jdaddy'
NeoBundle "daylerees/colour-schemes", { "rtp": "vim/" }

NeoBundle 'othree/html5.vim'
NeoBundle 'groenewege/vim-less'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'burnettk/vim-angular'

call neobundle#end()

filetype plugin indent on

syntax on
set rnu
set nu

set background=dark
set t_Co=256 " Vim color
colorscheme desert " Color scheme
set encoding=utf8
set termencoding=utf-8
set fileencodings=utf8,cp1251
set title                   " show title in console title bar
set backspace=indent,eol,start
set laststatus=2

set clipboard=unnamed

set showmatch
set matchtime=0
set incsearch
set hlsearch
set ignorecase
set smartcase

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

autocmd FileType coffee setlocal softtabstop=2 tabstop=2 shiftwidth=2
autocmd FileType clojure setlocal softtabstop=2 tabstop=2 shiftwidth=2

vmap <Tab> > gv
vmap <S-Tab> < gv

set nobackup
set noswapfile

NeoBundleCheck
