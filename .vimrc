colorscheme iceberg

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

" fzf.vim
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Use release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Or latest tag
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
" Or build from source code by use yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

Plug 'airblade/vim-gitgutter'

Plug 'nathanaelkane/vim-indent-guides'


call plug#end()

" custom key map

nnoremap <C-p> :<C-u>Files<CR>
nnoremap <C-v> :<C-u>vsplit<CR>

let g:indent_guides_enable_on_vim_startup = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

