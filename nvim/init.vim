" AutoMagically Install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"************************"
call plug#begin(data_dir . '/plugins')

source ~/.config/nvim/plugins/ghost.vim
source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/easy-replace.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/snipmate.vim
source ~/.config/nvim/plugins/auto-pairs.vim
source ~/.config/nvim/plugins/easyclip.vim
source ~/.config/nvim/plugins/gitgutter.vim
source ~/.config/nvim/plugins/startify.vim
source ~/.config/nvim/plugins/vimwiki.vim
source ~/.config/nvim/plugins/colorizer.vim
source ~/.config/nvim/plugins/ejs-support.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/supertab.vim
source ~/.config/nvim/plugins/commentary.vim
source ~/.config/nvim/plugins/fugitive.vim
source ~/.config/nvim/plugins/smoothie.vim
source ~/.config/nvim/plugins/syntastic.vim
source ~/.config/nvim/plugins/themes.vim
call plug#end() " *** PLUGINS ***

set hidden " Lets you close a non-saved buffere and retain work "

" Don't let scroll to top... Keep context
set scrolloff=8
set sidescrolloff=8

" Re highlight after indent...
" vnoremap < <gv
" vnoremap > >gv

"Fuzzy Search Mapping CTL + p"
map <C-p> :Files<CR>

"Faster scrolling
set ttyfast

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

set hlsearch incsearch

"CTL + h,j,k,l to go left, down, up, right "
"Navigating Panes"
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

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

colorscheme xcodedark

"Background rendering Problem w/ 3rd party terminals (kitty)"
let &t_ut=''

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

" Ejs support?
au BufNewFile,BufRead *.ejs set filetype=html


"Modifiable
:set ma

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
set foldlevelstart=0
set foldnestmax=5
set foldmethod=indent " Setting this to syntax screws performance... 
set foldenable

"Important Key Mappings
nnoremap <space> za
imap jk <ESC>

set showmatch

" Close syntastic window
nnoremap <C-c> :lclose<CR>

"Mapping :Ag command multiple file string searching"
nnoremap <C-s> :Ag .<CR>
let g:ag={}
let g:ag.working_path_mode='r'
