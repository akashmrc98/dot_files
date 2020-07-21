""Visual Settings
syntax on
set number
set relativenumber
"" Tabs. May be overridden by autocmd rules
set wrap
set noswapfile
set nobackup
set tabstop=2
set shiftwidth=2
set softtabstop=2
set laststatus=2

"" Searching
set hlsearch
set smartcase
set linebreak
set ruler

"" Status bar
set laststatus=2
set updatetime=300
set background=dark

"General Key Mappings 
map <Space> <Leader>

noremap ! ^
noremap # $
noremap @ %
noremap $ #
noremap % @
noremap ^ !
noremap U <C-r>

noremap <Leader>fs :w<CR>
noremap <Leader>fq :q!<CR>
noremap <Leader>ft :NERDTreeToggle<CR>
noremap <Leader>ff :Files<CR>
noremap <Leader>fg :GFiles<CR>
noremap <Leader>ww <C-w>w
noremap <Leader>wj gT
noremap <Leader>wl gt
noremap <Leader>fes :source %<CR>
noremap <Leader>fn <C-w>n
noremap <Leader>fv :vs<CR>
noremap <Leader>z :Goyo<CR>

"Plugins
call plug#begin('~/.vim/autoload/plugged')
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-commentary'
  Plug 'ryanoasis/vim-devicons'
  Plug 'mhinz/vim-startify'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-scripts/grep.vim'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'gruvbox-community/gruvbox'
  Plug 'w0rp/ale'    
  Plug 'sheerun/vim-polyglot'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-utils/vim-man'
  Plug 'digitaltoad/vim-pug'
  Plug 'jparise/vim-graphql'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'terryma/vim-multiple-cursors'
	Plug 'itchyny/lightline.vim'
	Plug 'dracula/vim', { 'as': 'dracula'  }
  Plug 'junegunn/fzf.vim'
  Plug 'pangloss/vim-javascript'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/vim-emoji'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'junegunn/rainbow_parentheses.vim'
  Plug 'prettier/vim-prettier', { 'do': 'npm install' }
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'leafgarland/typescript-vim'
	Plug 'tpope/vim-surround'
  Plug 'mattn/emmet-vim'
  call plug#end()

"" Emmet Config
let g:user_emmet_leader_key=','

"" AirLine Config
let g:airline_theme = 'powerlineish'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme = 'dark_minimal'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:startify_session_persistence = 1
let g:startify_session_autoload = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_enable_special = 1

"" NERDTree Config
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
let NERDTreeShowHidden=1
let g:NERDTreeMapOpenSplit="q"
let g:NERDTreeIgnore = ['^node_modules$']
let g:NERDTreeMinimalMenu = 0

"" Coc Config
let g:coc_global_extensions = ['coc-snippets', 'coc-pairs', 'coc-tsserver', 'coc-eslint', 'coc-prettier', 'coc-json']

"" ALE Config
let g:ale_sign_error = '!'
let g:ale_sign_warning = '#'
let g:ale_fix_on_save = 1

"" Prettier Config
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

""Vim Settings
let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)]"]"]"
set termguicolors
colorscheme dracula

set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#44475a ctermbg=234 
