"Set up plugin support :)"
"************************"
call plug#begin('~/.config/vim/plugged')
"************************"

" *** PLUGINS ***

" Javascript snippets

" Dependencies... ---
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
" ---

Plug 'garbas/vim-snipmate'
Plug 'grvcoelho/vim-javascript-snippets'

" Indent Guides
"Plug 'nathanaelkane/vim-indent-guides'

" Tab Completion Support
Plug 'ervandew/supertab'

" Plugin to make commenting source code easier :)
Plug 'tpope/vim-commentary'

" Centralizes clipboard between different vim instances
Plug 'svermeulen/vim-easyclip'

" Git Fugitive -- git wrapper
Plug 'tpope/vim-fugitive'

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
" *** PLUGINS ***

" Set old shipmate parser as default
let g:snipMate = { 'snippet_version' : 0 } 

" Set easyclip clipboard settings
set clipboard=unnamed

"Nerd Tree Mapping CTL + n"
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"Fuzzy Search Mapping CTL + p"
map <C-p> :Files<CR>

" Indent Guides Setup
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_start_level = 2
"let g:indent_guides_guide_size = 1

"hi IndentGuidesOdd  ctermbg=lightgrey
"hi IndentGuidesEven ctermbg=darkgrey


"Faster scrolling
set ttyfast

"Lower Status bar colors
let g:airline_theme='deus'

"remap vim command prefix
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

" Resizing Vertical & Horizontal Splits
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

" Ejs support?
au BufNewFile,BufRead *.ejs set filetype=html

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

"Modifiable
:set ma

"Transparent Background
let g:is_transparent = 0

hi Normal guibg=NONE ctermbg=NONE

" Transparency toggle ctl+t
function! Toggle_transparent()
    if g:is_transparent == 0
        hi Normal guibg=NONE ctermbg=NONE
        let g:is_transparent = 1
    else
        set background=dark
        let g:is_transparent = 0
    endif
endfunction
nnoremap <C-t> :call Toggle_transparent()<CR>

"Cursor Line
set cursorline

"Hybrid Numbering"
set number relativenumber
set nu rnu

"Syntax Highlight
syntax enable
filetype indent on

"Tab Config
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Folding Settings
set foldlevelstart=1
set foldnestmax=1
set foldmethod=indent " Setting this to syntax screws performance... 
set foldenable

"Important Key Mappings
nnoremap <space> za
imap jk <ESC>

set showmatch
