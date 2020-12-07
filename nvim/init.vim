call plug#begin('~/.config/vim/plugged')

" Colorizer
Plug 'chrisbra/Colorizer'

"Nerd Tree -> https://github.com/preservim/nerdtree"
Plug 'preservim/nerdtree'

"Fuzzy Searching"
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Status Bar"
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"js highlighting..."
Plug 'pangloss/vim-javascript'

"Vim Wiki Plugin"
Plug 'vimwiki/vimwiki'

"Xcode Dark theme for vim"
Plug 'arzg/vim-colors-xcode'

"Auto pairs for parenthesis etc..."
Plug 'jiangmiao/auto-pairs'

"Shows vim diffs next to line numbers"
Plug 'airblade/vim-gitgutter'

"vim ejs support"
Plug 'briancollins/vim-jst'
Plug 'pangloss/vim-javascript'

"Fancy Start screen :)
Plug 'mhinz/vim-startify'

call plug#end()

"Nerd Tree Mapping CTL + n"
map <C-n> :NERDTreeToggle<CR>

"Fuzzy Search Mapping CTL + p"
map <C-p> :Files<CR>

set ttyfast

let g:airline_theme='deus'

nnoremap ; :

"Try to keep lines to 80...
set colorcolumn=80

"don't skip wrapped lines"
nnoremap j gj
nnoremap k gk

"Searching Mappings"
nnoremap / /\v
vnoremap / /\v

nnoremap ? ?\v
vnoremap ? ?\v

"Mapping :Ag command multiple file string searching"
nnoremap <C-d> :Ag .<CR>
let g:ag={}
let g:ag.working_path_mode='r'

set hlsearch incsearch

"CTL + h,j,k,l to go left, down, up, right "
"Navigating Panes"
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nnoremap <C-i> :VimwikiIndex<CR>

"Navigating Tabs..."
nnoremap <S-h> :tabprevious<CR>
nnoremap <S-l> :tabnext<CR>
nnoremap <S-t> :tabnew<CR>
nnoremap <S-w> :tabclose<CR>

nnoremap <s-j> :resize -1<CR>
nnoremap <s-k> :resize +1<CR>
nnoremap <s-o> :vertical resize -1<CR>
nnoremap <s-u> :vertical resize +1<CR>
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬


"Invisible character colors 
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59


colorscheme xcodedark

"Background rendering Problem w/ 3rd party terminals (kitty)"
let &t_ut=''

"More config for vimWIKI"
set nocompatible
filetype plugin on
syntax on
hi VimwikiLink term=underline ctermfg=cyan guifg=cyan gui=underline

" Nested syntax hl types
let wiki = {}
let wiki.nested_syntaxes = {'js': 'javascript', 'python': 'python'}
let g:vimwiki_list = [wiki]


"Hybrid Numbering"
set number relativenumber
set nu rnu


filetype indent off
let NERDTreeShowHidden=1
syntax enable
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set cursorline
filetype indent on
set foldlevelstart=1
set foldnestmax=1

" Setting this to syntax screws performance... 
set foldmethod=indent

set foldenable
nnoremap <space> za
imap jk <ESC>
set showmatch
