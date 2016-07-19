execute pathogen#infect()

set nocompatible                " choose no compatibility with legacy vi
set vb t_vb=                    " disable bell
set noswapfile
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Allow saving as sudo
cmap w!! w !sudo tee > /dev/null %

" force markdown on .md
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" unique defaults for asciidoc
autocmd BufRead,BufNewFile *.txt,*.asciidoc,README,TODO,CHANGELOG,NOTES,ABOUT
        \ setlocal autoindent expandtab tabstop=8 softtabstop=2 shiftwidth=2 filetype=asciidoc
        \ textwidth=70 wrap formatoptions=tcqn
        \ formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\\|^\\s*<\\d\\+>\\s\\+\\\\|^\\s*[a-zA-Z.]\\.\\s\\+\\\\|^\\s*[ivxIVX]\\+\\.\\s\\+
        \ comments=s1:/*,ex:*/,://,b:#,:%,:XCOMM,fb:-,fb:*,fb:+,fb:.,fb:>

" vim-airline init
set t_Co=256
let g:airline_powerline_fonts = 1 " putty requires DejaVu
set laststatus=2

" molokai colorscheme
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" vim-javascript
" set javascript_enable_domhtmlcss = 0
" set b:javascript_fold = 1
" set javascript_ignore_javaScriptdoc = 0

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_jslint_args = "--white --nomen --regexp --browser --devel --windows --sloppy --vars"

" vimproc
autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP

" StanAngeloff/php.vim overriding highlighting
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
