set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'chriskempson/base16-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'reedes/vim-colors-pencil'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'sjl/badwolf'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'vim-syntastic/syntastic'
Plugin 'kristijanhusak/vim-carbon-now-sh'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'flazz/vim-colorschemes'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
Plugin 'othree/xml.vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tmhedberg/SimpylFold'
" All of your Plugins must be added before the following line
call vundle#end()            " required
call glaive#Install()
Glaive codefmt plugin[mappings]
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set nu
set updatetime=250
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:gitgutter_max_signs=1000
set runtimepath+=~/.vim_runtime

if exists('&signcolumn')
    set signcolumn=yes
else
    let g:gitgutter_sign_column_always = 1
endif

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

autocmd FileType java setlocal omnifunc=javacomplete#Complete

" You Complete Me config
let g:clang_library = 1
let g:clang_library_path = '/usr/local/Cellar/llvm/6.0.0/lib/'
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|

set foldmethod=syntax
set nofoldenable
set foldlevel=0

colorscheme wombat
set term=xterm-256color
filetype plugin indent on
syntax on

" syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'passive' }

" auto-save
let g:auto_save = 1

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set hlsearch

let g:indent_guides_enable_on_vim_startup = 1
