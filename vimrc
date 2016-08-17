" -------------------------------------
" │             Settings              │
" -------------------------------------

set nocompatible    " Don't make vim vi-compatibile


syntax on     " Enable syntax highlighting


filetype plugin indent on " on   - Enable file type detection
                " indent - Enable loading of indent file
        " plugin - Enable loading of plugin files


set autoindent      " Copy indent to the new line
set autoread

set backupdir=~/.vim/backups    " Set directory for backup files

set backupskip=/tmp/*           " ┐ Don't create backups
set backupskip+=/private/tmp/*  " ┘ for certain files

set clipboard+=unnamed " Yanks go on clipboard instead.


set directory=~/.vim/swaps      " Set directory for swap files
set encoding=utf-8 nobomb       " Use UTF-8 without BOM
set history=5000                " Increase command line history
set hlsearch                    " Enable search highlighting
set ignorecase                  " Ignore case in search patterns

set incsearch                   " Highlight search pattern as
                                " it is being typed

set laststatus=2                " Always show the status line


set listchars=tab:▸\            " ┐
set listchars+=trail:·          " │ Use custom symbols to
set listchars+=eol:↴            " │ represent invisible characters
set listchars+=nbsp:_           " ┘

set mousehide                   " Hide mouse pointer while typing
set mouse=a                     " Enable mouse

set nostartofline               " Kept the cursor on the same column
set number                      " Show line number


set showmode                    " Show current mode
set spelllang=en_us             " Set the spellchecking language


set tabstop=2                   " ┐
set softtabstop=2               " │ Set global <TAB> settings
set shiftwidth=2                " │ http://vimcasts.org/e/2
set expandtab                   " ┘


set ttyfast                     " Enable fast terminal connection
set undodir=~/.vim/undos        " Set directory for undo files
set undofile                    " Automatically save undo history

set wrap                        " Line wrapping on

set hidden
set ffs=unix,dos,mac

set splitright                  " Open splits at right side (and below)
set splitbelow

" set ruler                       " Show cursor position
" set colorcolumn=73              " Highlight certain column(s)


" ------------------------------------------------------------------------------
" │ Plug                                                                       │
" ------------------------------------------------------------------------------

filetype off

call plug#begin('~/.vim/plugged')

Plug 'Lokaltog/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-airline'
Plug 'danro/rename.vim'
Plug 'godlygeek/tabular'
Plug 'gorkunov/smartpairs.vim'
Plug 'shougo/neocomplcache.vim'
Plug 'kien/ctrlp.vim'
" Plug 'lilydjwg/colorizer'
Plug 'msanders/snipmate.vim'
Plug 'rking/ag.vim'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/matchit.zip'
Plug 'joshdick/onedark.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-markdown'
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax'
Plug 'rstacruz/vim-closer'
Plug 'wavded/vim-stylus'
Plug 'othree/html5.vim'
Plug 'shutnik/jshint2.vim'
Plug 'pangloss/vim-javascript'

call plug#end()

" ┌───────────────────────────────────┐
" │       Plugins customizations      │
" └───────────────────────────────────┘

" nmap <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1
let NERDTreeIgnore = [
  \'\.DS_Store$',
  \'\.bundle$',
  \'\.capistrano$',
  \'\.git$',
  \'\.gitkeep$',
  \'\.keep$',
  \'\.routes$',
  \'\.sass-cache$',
  \'\.swo$',
  \'\.swp$',
  \'tags$'
\]

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_max_height = 10
let g:ctrlp_working_path_mode = 2
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$',
  \ 'file': '\.exe$\|\.so$\|\.dll$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" vim-airline
let g:airline_powerline_fonts=1
let g:airline#extensions#syntastic#enabled=1
let g:airline_left_sep='›'
let g:airline_right_sep='‹'

let g:airline#extensions#branch#enabled=1
let g:airline_symbols = {}
let g:airline_left_alt_sep = '>'
let g:airline_right_alt_sep = '<'
let g:airline_symbols.branch = '›'
let g:airline_symbols.readonly = '‹'
let g:airline_symbols.linenr = '‹'
let g:airline_symbols.paste = 'ρ'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep = '›'
let g:airline#extensions#tabline#left_alt_sep = '›'

" ----------------------------------------------------------------------
" | Plugins - Emmet                                                    |
" ----------------------------------------------------------------------

let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.

let g:user_emmet_leader_key='<C-Y>'

let g:user_emmet_install_global=0
autocmd FileType html,css EmmetInstall


" ----------------------------------------------------------------------
" | Plugins - Markdown                                                 |
" ----------------------------------------------------------------------

" Disable Folding
" https://github.com/plasticboy/vim-markdown#disable-folding

let g:vim_markdown_folding_disabled=1


" ----------------------------------------------------------------------
" | Plugins - NeoComplCache                                            |
" ----------------------------------------------------------------------

" Enable `neocomplcache` by default
" https://github.com/Shougo/neocomplcache.vim#installation

let g:neocomplcache_enable_at_startup=1

" Enable omni completion.
autocmd FileType css            setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown  setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript     setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python         setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml            setlocal omnifunc=xmlcomplete#CompleteTags

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Make `<TAB>` autocomplete

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"


" ----------------------------------------------------------------------
" | Plugins - Syntastic                                                |
" ----------------------------------------------------------------------

" Inform Syntastic which checkers to use based on file types
" https://github.com/scrooloose/syntastic#3-faq

let g:syntastic_html_checkers = [ 'jshint' ]
let g:syntastic_javascript_checkers = [ 'jshint' ]

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Disable syntax checking by default
let g:syntastic_mode_map = {
    \ 'active_filetypes': [],
    \ 'mode': 'ative',
    \ 'passive_filetypes': ['html']
\}


" ----------------------------------------------------------------------
" | Plugins - Airline                                                  |
" ----------------------------------------------------------------------

let g:airline_powerline_fonts=1
let g:airline#extensions#syntastic#enabled=1
let g:airline_left_sep='›'
let g:airline_right_sep='‹'

let g:airline#extensions#branch#enabled=1
let g:airline_symbols = {}
let g:airline_left_alt_sep = '>'
let g:airline_right_alt_sep = '<'
let g:airline_symbols.branch = '›'
let g:airline_symbols.readonly = '‹'
let g:airline_symbols.linenr = '‹'
let g:airline_symbols.paste = 'ρ'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep = '›'
let g:airline#extensions#tabline#left_alt_sep = '›'


" ----------------------------------------------------------------------
" | Plugins - CtrlP                                                    |
" ----------------------------------------------------------------------

let g:ctrlp_map = '<c-p>'
let g:ctrlp_max_height = 10
let g:ctrlp_working_path_mode = 2
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$',
  \ 'file': '\.exe$\|\.so$\|\.dll$',
  \ 'link': 'some_bad_symbolic_links',
  \ }



" ----------------------------------------------------------------------
" | Plugins - NerdTree                                                 |
" ----------------------------------------------------------------------

" nmap <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1
let NERDTreeIgnore = [
  \'\.DS_Store$',
  \'\.bundle$',
  \'\.capistrano$',
  \'\.git$',
  \'\.gitkeep$',
  \'\.keep$',
  \'\.routes$',
  \'\.sass-cache$',
  \'\.swo$',
  \'\.swp$',
  \'tags$'
\]


" ----------------------------------------------------------------------
" | Helper Functions                                                   |
" ----------------------------------------------------------------------

function! StripTrailingWhitespaces()

    " Save last search and cursor position
    let searchHistory = @/
    let cursorLine = line('.')
    let cursorColumn = col('.')

    " Strip trailing whitespaces
    %s/\s\+$//e

    " Restore previous search history and cursor position
    let @/ = searchHistory
    call cursor(cursorLine, cursorColumn)

endfunction

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" ----------------------------------------------------------------------
" | Automatic Commands                                                 |
" ----------------------------------------------------------------------

if has('autocmd')

    " Automatically strip the trailing whitespaces when files are saved

    augroup strip_trailing_whitespaces

        " List of file types that use the trailing whitespaces:
        "
        "  * Markdown
        "    https://daringfireball.net/projects/markdown/syntax#block

        let excludedFileTypes = [ 'mkd.markdown' ]

        " Only strip the trailing whitespaces if the file type is
        " not in the excluded file types list

        autocmd!
        autocmd BufWritePre * if index(excludedFileTypes, &ft) < 0 | :call StripTrailingWhitespaces()

    augroup END

endif

" ----------------------------------------------------------------------
" | Color Scheme                                                       |
" ----------------------------------------------------------------------

set t_Co=256                        " Enable full-color support

set background=dark                 " Use colors that look good
                                    " on a dark background

colorscheme onedark                 " Use custom color scheme


" ----------------------------------------------------------------------
" | Key Mappings                                                       |
" ----------------------------------------------------------------------

" Use a different mapleader (default is '\')
let mapleader=","
let g:mapleader=","

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,w] Save file
nmap <leader>w :w!<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,l] Move to the next buffer
nmap <leader>l :bnext<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,h] Move to the previous buffer
nmap <leader>h :bprevious<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,t ] Toggle NERDTree
map <leader>t :NERDTreeToggle<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,ts] Toggle Syntastic
nmap <leader>ts :SyntasticToggleMode<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,cc] Toggle code comments
" https://github.com/tomtom/tcomment_vim
map <leader>cc :TComment<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


" [,ss] Strip trailing whitespace
nmap <leader>ss :call StripTrailingWhitespaces()<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,j ] JSHint the code
" https://github.com/Shutnik/jshint2.vim
nmap <leader>j :JSHint<CR>


" ----------------------------------------------------------------------
" | Status Line                                                        |
" ----------------------------------------------------------------------

" Terminal types:
"
"   1) term  (normal terminals, e.g.: vt100, xterm)
"   2) cterm (color terminals, e.g.: MS-DOS console, color-xterm)
"   3) gui   (GUIs)

highlight ColorColumn
    \ term=NONE
    \ cterm=NONE  ctermbg=237    ctermfg=NONE
    \ gui=NONE    guibg=#073642  guifg=NONE

highlight CursorLine
    \ term=NONE
    \ cterm=NONE  ctermbg=235  ctermfg=NONE
    \ gui=NONE    guibg=#073642  guifg=NONE

highlight CursorLineNr
    \ term=bold
    \ cterm=bold  ctermbg=NONE   ctermfg=178
    \ gui=bold    guibg=#073642  guifg=Orange

highlight LineNr
    \ term=NONE
    \ cterm=NONE  ctermfg=241    ctermbg=NONE
    \ gui=NONE    guifg=#839497  guibg=#073642

highlight User1
    \ term=NONE
    \ cterm=NONE  ctermbg=237    ctermfg=Grey
    \ gui=NONE    guibg=#073642  guifg=#839496

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set statusline=
set statusline+=%1*            " User1 highlight
set statusline+=\ [%n]         " Buffer number
set statusline+=\ %{GetGitBranchName()} " Git branch name
set statusline+=\ [%f]         " Path to the file
set statusline+=%m             " Modified flag
set statusline+=%r             " Readonly flag
set statusline+=%h             " Help file flag
set statusline+=%w             " Preview window flag
set statusline+=%y             " File type
set statusline+=[
set statusline+=%{&ff}         " File format
set statusline+=:
set statusline+=%{strlen(&fenc)?&fenc:'none'} " File encoding
set statusline+=]
set statusline+=%=             " Left/Right separator
set statusline+=%c             " File encoding
set statusline+=,
set statusline+=%l             " Current line number
set statusline+=/
set statusline+=%L             " Total number of lines
set statusline+=\ (%P)\        " Percent through file

" Example result:
"
"  [1] [master] [vim/vimrc][vim][unix:utf-8]            17,238/381 (59%)
