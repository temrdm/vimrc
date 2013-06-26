set nocompatible
filetype off 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Installed packages

" Vim packages
    Bundle 'Tagbar'
    Bundle 'Syntastic'
" End Vim packages

" Git packages
    Bundle 'gmarik/vundle'
    Bundle 'vim-scripts/SyntaxComplete'
    Bundle 'scrooloose/nerdtree'
    Bundle 'scrooloose/nerdcommenter'
    Bundle 'vim-scripts/StatusLineHighlight'
    Bundle 'corntrace/bufexplorer'
    Bundle 'vim-scripts/closetag.vim'
    Bundle 'tpope/vim-surround'
    Bundle 'klen/python-mode'
    Bundle 'kchmck/vim-coffee-script'
    Bundle 'pangloss/vim-javascript'
    Bundle 'othree/javascript-libraries-syntax.vim'
    Bundle 'vim-scripts/VimClojure'
    Bundle 'davidhalter/jedi-vim'
" End Git packages

" End packages

" Default settings
filetype plugin indent on
syntax on
colorscheme koehler
set background=dark

" Set line numbering
set nu

" Count line up/down
set scrolljump=7 
set scrolloff=7 

" Terminal encoding settings
set encoding=utf8
set termencoding=utf-8
set fileencodings=utf8,cp1251

" Tab settings
set expandtab
set shiftwidth=4 
set softtabstop=4 
set tabstop=4 

" Status bar settings
set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P
set laststatus=2

set smartindent

" Off replace mode
imap >Ins> <Esc>i 

" Ctr+space comlete 
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
            \ "\<lt>C-n>" :
            \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
            \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
            \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

" Close tag settings
let g:closetag_html_style=1

" Tag bar settings
nnoremap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0 "tagbar shows tags in order of they created in file
let g:tagbar_foldlevel = 0 "close tagbar folds by default

" NertTree settings
map <C-n> :NERDTreeToggle<CR>

map <F5> :call ToggleBg()<CR>
function! ToggleBg()
    if &background == 'dark'
        set bg=light
    else
        set bg=dark
    endif
endfunc

" Language Settings

" Javascript settings
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" Python settings
let g:pymode_options = 0
let g:pymode_lint_write = 0 "не проверять при каждом сохранении
let g:pymode_rope_vim_completion = 0 "не использовать автодополнение rope

" Clojure settings
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1
let vimclojure#NailgunClient = "~/bin/ng"
let vimclojure#WantNailgun = 1
