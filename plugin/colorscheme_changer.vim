scriptencoding utf-8

if exists('g:loaded_colorscheme_changer') || &compatible
    finish
endif
let g:loaded_colorscheme_changer=1

let g:colorscheme_changer_current=get(g:, 'colorscheme_changer_current', 0)
let g:colorscheme_changer_colors=get(g:, 'colorscheme_changer_colors', ['default'])

function! ChangeColorIndex() abort
    exec 'colorscheme ' . g:colorscheme_changer_colors[g:colorscheme_changer_current]
    let g:colorscheme_changer_current += 1
    if g:colorscheme_changer_current >= len(g:colorscheme_changer_colors)
        let g:colorscheme_changer_current = 0
    endif
endfunction

command! ChangeColor call ChangeColorIndex()
