colorscheme iceberg

filetype plugin on

syntax on

set number
set expandtab
set tabstop=2
set shiftwidth=2
set ignorecase
set smartcase
set wrapscan
set hlsearch
set showmatch matchtime=1
set guioptions+=a
set smartindent
set title
set clipboard=unnamed,autoselect
set backspace=indent,eol,start " for using delete on newer vim
set cursorline
set wildmode=list:longest

inoremap <silent> jj <ESC>

augroup source-vimrc
  autocmd!
  autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
  autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
augroup END

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tomtom/tcomment_vim'

call plug#end()

" custom key map

let mapleader = "\<Space>"

nnoremap <C-v> :<C-u>vsplit<CR>
nnoremap <Leader>p :<C-u>Files<CR>
nnoremap <Leader>o :<C-u>Ex<CR>
nnoremap <Leader>s :<C-u>w<CR>
nnoremap <Leader>q :<C-u>q<CR>

let g:indent_guides_enable_on_vim_startup = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

