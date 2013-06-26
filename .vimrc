" Default settings
    set nocompatible
    filetype off 
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    
    filetype plugin indent on
    syntax on
    colorscheme koehler
    set background=dark
    set nu
    
    set scrolljump=7 
    set scrolloff=7 
    
    set encoding=utf8
    set termencoding=utf-8
    set fileencodings=utf8,cp1251
    
    set expandtab
    set shiftwidth=4 
    set softtabstop=4 
    set tabstop=4 
    
    imap >Ins> <Esc>i 
    
    inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
                \ "\<lt>C-n>" :
                \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
                \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
                \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
    imap <C-@> <C-Space>


" vundle package
Bundle 'gmarik/vundle'


" Tagbar package
Bundle 'Tagbar'
    nnoremap <F8> :TagbarToggle<CR>
    let g:tagbar_autofocus = 1
    let g:tagbar_sort = 0 
    let g:tagbar_foldlevel = 0


" Syntastic package
Bundle 'Syntastic'


" SyntaxComplete package
Bundle 'vim-scripts/SyntaxComplete'


" nerdtree package
Bundle 'scrooloose/nerdtree'
    map <C-n> :NERDTreeToggle<CR>


" nerdcommenter package
Bundle 'scrooloose/nerdcommenter'


" StatusLineHighlight package
Bundle 'vim-scripts/StatusLineHighlight'
    set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P
    set laststatus=2
    set smartindent


" bufexplorer package
Bundle 'corntrace/bufexplorer'


" closetag.vim package
Bundle 'vim-scripts/closetag.vim'
    let g:closetag_html_style=1


" vim-surround package
Bundle 'tpope/vim-surround'


" python-mode package
Bundle 'klen/python-mode'
    let g:pymode_options = 0
    let g:pymode_lint_write = 0 
    let g:pymode_rope_vim_completion = 0 
    let g:pymode_folding = 0


" vim-coffee-script package
Bundle 'kchmck/vim-coffee-script'


" vim-javascript package
Bundle 'pangloss/vim-javascript'
    let g:html_indent_inctags = "html,body,head,tbody"
    let g:html_indent_script1 = "inc"
    let g:html_indent_style1 = "inc"


" javascript-libraries-syntax.vim package
Bundle 'othree/javascript-libraries-syntax.vim'


" VimClojure package
Bundle 'vim-scripts/VimClojure'
    let g:vimclojure#HighlightBuiltins = 1
    let g:vimclojure#ParenRainbow = 1
    let vimclojure#NailgunClient = "~/bin/ng"
    let vimclojure#WantNailgun = 1


" jedi-vim package
Bundle 'davidhalter/jedi-vim'

"Conque
Bundle 'basepi/vim-conque'
