set nocompatible
filetype off 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'sjl/badwolf'
    colorscheme badwolf
    let g:badwolf_html_link_underline = 1
    let g:badwolf_css_props_highlight = 1

Bundle 'Valloric/YouCompleteMe'
Bundle 'marijnh/tern_for_vim'

"Bundle 'SyntaxComplete'
"Bundle 'othree/javascript-libraries-syntax.vim'
"    let g:used_javascript_libs = 'underscore,backbone,jquery,angularjs'


Bundle 'Lokaltog/vim-easymotion'

Bundle 'scrooloose/nerdtree'
    map <C-y> :NERDTreeToggle<CR>
    " Auto open nerdtree
    autocmd VimEnter * NERDTree
    " Focus to file tab
    autocmd VimEnter * wincmd p
    " Close nerdtree if file close
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif    
    let NERDTreeIgnore = ['\.pyc$']

Bundle 'scrooloose/nerdcommenter'

Bundle 'vim-scripts/StatusLineHighlight'
    set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P
    set laststatus=2
    set smartindent

Bundle 'mhinz/vim-signify'

Bundle 'kchmck/vim-coffee-script'

Bundle 'terryma/vim-multiple-cursors'
    let g:multi_cursor_next_key='<C-n>'
    let g:multi_cursor_prev_key='<C-p>'
    let g:multi_cursor_skip_key='<C-x>'
    let g:multi_cursor_quit_key='<Esc>'

Bundle 'pangloss/vim-javascript'
    let g:html_indent_inctags = "html,body,head,tbody"
    let g:html_indent_script1 = "inc"
    let g:html_indent_style1 = "inc"

Bundle 'gregsexton/MatchTag'

Bundle 'corntrace/bufexplorer'

Bundle 'vim-scripts/closetag.vim'
    let g:closetag_html_style=1

Bundle 'tpope/vim-surround'

" python-mode package
"Bundle 'klen/python-mode'
    "let g:pymode_options = 0
    "let g:pymode_lint_write = 0 
    "let g:pymode_rope_vim_completion = 0 
    "let g:pymode_folding = 0

Bundle 'othree/html5.vim'

Bundle 'hokaccha/vim-html5validator'

Bundle 'hail2u/vim-css3-syntax'

Bundle 'skammer/vim-css-color'

"Bundle 'miripiruni/vim-better-css-indent'
"Bundle 'miripiruni/CSScomb-for-Vim'

" jedi-vim package
"Bundle 'davidhalter/jedi-vim'

Bundle 'jimenezrick/vimerl'
Bundle 'Blackrush/vim-gocode'

" Default settings
filetype plugin indent on
syntax on
set background=dark
set nu
set showtabline=1 

set scrolljump=7 
set scrolloff=7 

set encoding=utf8
set termencoding=utf-8
set fileencodings=utf8,cp1251
set wrap " Включаем перенос строк
set linebreak " Перенос не разрывая слов
set autoindent " Копирует отступ от предыдущей строки
set smartindent " Включаем 'умную' автоматическую расстановку отступов

"" Символ табуляции и конца строки
if has('multi_byte')
    set listchars=tab:▸\ ,trail:·,extends:→,precedes:←,nbsp:×
endif

"" Символ, который будет показан перед перенесенной строкой
if has("linebreak")
    let &sbr = nr2char(8618).' '" Show ↪ at the beginning of wrapped lines
endif

set splitbelow  " новый сплит будет ниже текущего :sp
set splitright  " новый сплит будет правее текущего :vsp

set expandtab 
set shiftwidth=4 
set softtabstop=4 
set tabstop=4 

autocmd FileType coffee setlocal softtabstop=2 tabstop=2 shiftwidth=2 expandtab foldnestmax=1
autocmd FileType javascript setlocal softtabstop=2 tabstop=2 shiftwidth=2 expandtab foldnestmax=1

" let mapleader = "," " мапим <Leader> на запятую.     
"" Вставлять код извне без этой строчки проблематично, без нее начитается
"" бешеный реформат кода
set pastetoggle=<Leader>p

imap >Ins> <Esc>i 

"" Highlight text after 79 charset
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%79v.\+/

"" Проверка орфографии
"set spell spelllang= 
"set nospell " По умолчанию проверка орфографии выключена
"menu Spell.off :setlocal spell spelllang= <cr>
"menu Spell.Russian+English :setlocal spell spelllang=ru,en <cr>
"menu Spell.Russian :setlocal spell spelllang=ru <cr>
"menu Spell.English :setlocal spell spelllang=en <cr>
"menu Spell.-SpellControl- :
"menu Spell.Word\ Suggest<Tab>z= z=
"menu Spell.Previous\ Wrong\ Word<Tab>[s [s
"menu Spell.Next\ Wrong\ Word<Tab>]s ]s

"" Save on losing focus
autocmd FocusLost * :wa 

"" Indent multiple lines with tab
vmap <Tab> > gv
vmap <S-Tab> < gv

"Remove GUI menus
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r 

function s:ForbidReplace()
    if v:insertmode isnot# 'i'
        call feedkeys("\<Insert>", "n")
    endif
endfunction
augroup ForbidReplaceMode
    autocmd!
    autocmd InsertEnter  * call s:ForbidReplace()
    autocmd InsertChange * call s:ForbidReplace()
augroup END
