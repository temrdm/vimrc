set nocompatible
filetype off 
set rtp+=/home/jackdevil/.vim/bundle/vundle/
call vundle#rc()

"-- Installed packages --
"vim packages
Bundle 'Tagbar'
Bundle 'Syntastic'

"git packages
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/SyntaxComplete'
Bundle 'gmarik/vundle'
Bundle 'klen/python-mode'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/VimClojure'
Bundle 'kchmck/vim-coffee-script'
Bundle 'corntrace/bufexplorer'
Bundle 'vim-scripts/closetag.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/StatusLineHighlight'
Bundle 'morhetz/gruvbox'
Bundle 'vim-scripts/darkspectrum'

"-- End packages --

" Default Settings
filetype plugin indent on
syntax on
colorscheme gruvbox
set bg=light

set nu "Line number

" Count line up/down
set scrolljump=7 
set scrolloff=7 

"Terminal encoding
set encoding=utf8
set termencoding=utf-8
set fileencodings=utf8,cp1251

" Tab settings (space, size)
set expandtab
set shiftwidth=4 
set softtabstop=4 
set tabstop=4 

set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P "Status bar
set laststatus=2 "Status bar

set smartindent "Smart ident ))

"Off replace mode
imap >Ins> <Esc>i 

"Ctr+space comlete
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
            \ "\<lt>C-n>" :
            \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
            \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
            \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

"Close tag config
let g:closetag_html_style=1

" Javasript config
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" Python config
let g:pymode_options = 0
let g:pymode_lint_write = 0 "не проверять при каждом сохранении
let g:pymode_rope_vim_completion = 0 "не использовать автодополнение rope

" Tag bar
nnoremap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0 "tagbar shows tags in order of they created in file
let g:tagbar_foldlevel = 0 "close tagbar folds by default

" NertTree Setting
map <C-n> :NERDTreeToggle<CR>

map <F5> :call ToggleBg()<CR>
function! ToggleBg()
    if &background == 'dark'
        set bg=light
    else
        set bg=dark
    endif
endfunc
