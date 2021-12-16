"Vim Wiki Plugin"
Plug 'vimwiki/vimwiki'

" Nested syntax hl types
let wiki = {}
let wiki.nested_syntaxes = {'js': 'javascript', 'python': 'python'}
let g:vimwiki_list = [wiki]
