Plug 'raghur/vim-ghost', {'do': ':GhostInstall'}

g:ghost_darwin_app='kitty'
let g:ghost_enable_sync = 1

function! s:SetupGhostBuffer()
    if match(expand("%:a"), '\v/ghost-(github|reddit)\.com-')
        set ft=markdown
    endif
endfunction

augroup vim-ghost
    au!
    au User vim-ghost#connected call s:SetupGhostBuffer()
augroup END
