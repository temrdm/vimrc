if has('vim_starting')
    set nocompatible 
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" Bundles here:
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

NeoBundle 'bling/vim-airline'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
NeoBundle 'scrooloose/nerdtree'
    map <C-y> :NERDTreeToggle<CR>
    let NERDTreeIgnore = ['\.pyc$']
NeoBundle 'tpope/vim-surround'
NeoBundle 'mattn/emmet-vim'
imap <expr><tab>
  \ neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" :
  \ emmet#isExpandable() ? "\<C-e>" :
  \ pumvisible() ? "\<C-n>" :
  \ "\<tab>"

"NeoBundle 'Valloric/YouCompleteMe'
"NeoBundle 'marijnh/tern_for_vim'
    "autocmd BufEnter * set completeopt-=preview

NeoBundle 'mhinz/vim-signify'
NeoBundle 'terryma/vim-multiple-cursors'
    let g:multi_cursor_next_key='<C-n>'
    let g:multi_cursor_prev_key='<C-p>'
    let g:multi_cursor_skip_key='<C-x>'
    let g:multi_cursor_quit_key='<Esc>'
NeoBundle 'gregsexton/MatchTag'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'kien/ctrlp.vim'
    let g:ctrlp_working_path_mode = 'ra'
    let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(pyc|jpg|jpeg|png)$',
      \ }
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'tpope/vim-jdaddy'

NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'othree/html5.vim'
NeoBundle 'groenewege/vim-less'

filetype plugin indent on

syntax on
set rnu
set nu

set background=dark
set t_Co=256 " Vim color
colorscheme koehler " Color scheme
set encoding=utf8
set termencoding=utf-8
set fileencodings=utf8,cp1251
set title                   " show title in console title bar

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
autocmd FileType javascript setlocal softtabstop=2 tabstop=2 shiftwidth=2

vmap <Tab> > gv
vmap <S-Tab> < gv

set nobackup
set noswapfile

NeoBundleCheck
