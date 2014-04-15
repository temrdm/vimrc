if has('vim_starting')
    set nocompatible 
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" Bundles here:
NeoBundle 'Shougo/neocomplete'
    let g:acp_enableAtStartup = 0
    " Use neocomplete.
    let g:neocomplete#enable_at_startup = 1
    " Use smartcase.
    let g:neocomplete#enable_smart_case = 1
    " Set minimum syntax keyword length.
    let g:neocomplete#sources#syntax#min_keyword_length = 2
    let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
    " Define keyword.
    if !exists('g:neocomplete#keyword_patterns')
        let g:neocomplete#keyword_patterns = {}
    endif
    let g:neocomplete#keyword_patterns['default'] = '\h\w*'

    " Plugin key-mappings.
    inoremap <expr><C-l> neocomplete#complete_common_string()

    " <TAB>: completion.
    inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
    " <C-h>, <BS>: close popup and delete backword char.
    inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"

    "inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

NeoBundle 'Shougo/neosnippet'
    imap <C-k><Plug> (neosnippet_expand_or_jump)
    smap <C-k><Plug> (neosnippet_expand_or_jump)
    xmap <C-k><Plug> (neosnippet_expand_target)

NeoBundle 'Shougo/neosnippet-snippets'

NeoBundle 'bling/vim-airline'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'

NeoBundle 'scrooloose/nerdtree'
    map <C-m> :NERDTreeToggle<CR>
    let NERDTreeIgnore = ['\.pyc$']

NeoBundle 'tpope/vim-surround'

NeoBundle 'mattn/emmet-vim'
    function! s:zen_html_tab()
      let line = getline('.')
      let pos = getpos('.')
      if match(line, '<.*>') >= 0
        return "\<c-y>n"
      endif
      return "\<c-y>,"
    endfunction
    autocmd FileType html imap <buffer><expr><tab> <sid>zen_html_tab()

"NeoBundle 'Valloric/YouCompleteMe'
"NeoBundle 'marijnh/tern_for_vim'
    "autocmd BufEnter * set completeopt-=preview

NeoBundle 'mhinz/vim-signify'

NeoBundle 'mhinz/vim-startify'

NeoBundle 'joedicastro/vim-multiple-cursors'
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

NeoBundle 't9md/vim-smalls'
    nmap <C-s><Plug> (smalls)
    omap <C-s><Plug> (smalls)
    xmap <C-s><Plug> (smalls)

NeoBundle 'vim-scripts/Decho'

NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'tpope/vim-jdaddy'
NeoBundle "daylerees/colour-schemes", { "rtp": "vim/" }

NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'othree/html5.vim'
NeoBundle 'groenewege/vim-less'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'burnettk/vim-angular'

NeoBundle 'vim-scripts/VimClojure'
    au BufRead,BufNewFile *.wisp set filetype=clojure

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
