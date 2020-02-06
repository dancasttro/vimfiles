set nocompatible 

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'cohama/lexima.vim'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

syntax on
filetype plugin on

colorscheme gruvbox
set background=dark

" -----------------------------------------------
" Opções gerais
" -----------------------------------------------
set number
set nowrap                  " Não quebre a linha
set wildmenu                " Opção de autocompletar com o tab as opções do vim em comand-line
set visualbell t_vb=        " Desabilita o barulho irritante do speaker, e ao invés de piscar a tela não faz nada-------------------------
set mouse=a

" -----------------------------------------------
" Opções de pequisa
" -----------------------------------------------
set incsearch           " Pesquisa incremental
set ignorecase          " Auto explicativo...
set hlsearch            " Highligth search :)
set smartcase           " Se a pesquisa for tudo minúsculo, ignora o case, mas se houver pelo menos um caractere maiúsculo, o case será levado em consideração

" -----------------------------------------------
" Tabs e espaços
" -----------------------------------------------
set smartindent                     " Mantém a mesma identação que a linha anterior
set expandtab                       " Troca o tab or espaços
set tabstop=2                       " Tab equivale a 4 espaços
set shiftwidth=2                    " Operações como identação usando o >> também com 4 espaços
set softtabstop=2                   " Operações como o backspace também com 4 espaços
set list listchars=tab:→\ ,trail:·  " Exibe o caractere tab para o caso de alguém cometer o sacrilégio de misturar espaços com tabs

set inccommand=split
set clipboard=unnamed

let mapleader="\<space>"

nnoremap <c-p> :Files<cr>
