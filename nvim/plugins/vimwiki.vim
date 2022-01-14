"Vim Wiki Plugin"
Plug 'vimwiki/vimwiki'

" Nested syntax hl types
let wiki = {}
let wiki.nested_syntaxes = {'js': 'javascript', 'python': 'python'}
let g:vimwiki_list = [wiki]

nnoremap <C-i> :VimwikiIndex<CR>

"More config for vimWIKI"
set nocompatible
filetype plugin on
syntax on
hi VimwikiLink term=underline ctermfg=cyan guifg=cyan gui=underline
