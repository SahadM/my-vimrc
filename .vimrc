set nocompatible              " be iMproved, required
filetype off                  " required

"
"   VUNDLE manager package plugin
"   =============================
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'
    "
    " The following are examples of different formats supported.
    " Keep Plugin commands between vundle#begin/end.
    " plugin on GitHub repo
    Plugin 'tpope/vim-fugitive'

    " Move block lines
    Plugin 'matze/vim-move'

    " plugin from http://vim-scripts.org/vim/scripts.html
    " Plugin 'L9'
    " Git plugin not hosted on GitHub
    Plugin 'git://git.wincent.com/command-t.git'
    " git repos on your local machine (i.e. when working on your own plugin)
    " Plugin 'file:///home/gmarik/path/to/plugin'
    " The sparkup vim script is in a subdirectory of this repo called vim.
    " Pass the path to set the runtimepath properly.
    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    " Install L9 and avoid a Naming conflict if you've already installed a
    " different version somewhere else.
    " Plugin 'ascenator/L9', {'name': 'newL9'}
    "
    " All of your Plugins must be added before the following line
    "
    " mutli-cursors x selectors
    " Plugin 'terryma/vim-multiple-cursors'

    " vim airlines
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    " Plugin 'terryma/vim-multiple-cursors' " # for vim 7

    Plugin 'dracula/vim', { 'name': 'dracula' }

call vundle#end()

"
"   VIM-PLUG manager package plugin
"   ===============================
"
call plug#begin()
    " Plug 'mg979/vim-visual-multi', {'branch': 'master'} " # for vim 7+, 8
    Plug 'bluz71/vim-moonfly-colors'
    Plug 'ulwlu/elly.vim'
    Plug 'ntk148v/vim-horizon'
    Plug 'wojciechkepka/vim-github-dark'
    Plug 'lighthaus-theme/vim-lighthaus'
    Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
    Plug 'relastle/bluewery.vim'
call plug#end()


filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" smart tab line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" apply multi cursors
" let g:multi_cursor_next_key="\<C-d>"
" let g:multi_cursor_use_default_mapping=0

" Default mapping
"let g:multi_cursor_start_word_key      = '<C-n>'
"let g:multi_cursor_select_all_word_key = '<A-n>'
"let g:multi_cursor_start_key           = 'g<C-n>'
"let g:multi_cursor_select_all_key      = 'g<A-n>'
"let g:multi_cursor_next_key            = '<C-n>'
"let g:multi_cursor_prev_key            = '<C-p>'
"let g:multi_cursor_skip_key            = '<C-x>'
"let g:multi_cursor_quit_key            = '<Esc>'

set nu
syntax on
syntax enable

" colorschemes
colo ron

" alternatively use to switch between tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" define tabs as 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" display filename and current line
" set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"
set statusline+=%F
set laststatus=2

" disable swap file
set noswapfile

set paste

