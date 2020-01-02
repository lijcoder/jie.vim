" vim function 
"    Author: LiJie
"

"---------------------------------------
" mode()简写对应的全名表
"---------------------------------------
let s:_statusline = {
      \   'mode_upper': {
      \     'n': 'NORMAL', 'i': 'INSERT', 'R': 'REPLACE', 'v': 'VISUAL', 'V': 'V-LINE', "\<C-v>": 'V-BLOCK',
      \     'c': 'COMMAND', 's': 'SELECT', 'S': 'S-LINE', "\<C-s>": 'S-BLOCK', 't': 'TERMINAL'
      \   },
      \   'mode_lower': {
      \     'n': 'normal', 'i': 'insert', 'R': 'replace', 'v': 'visual', 'V': 'visual', "\<C-v>": 'visual',
      \     'c': 'command', 's': 'select', 'S': 'select', "\<C-s>": 'select', 't': 'terminal'
      \   },
      \ }
"---------------------------------------
" vim 模式全名, 将mode()转换为全名
"---------------------------------------
function! jieFunc#mode_upper() abort
    return get(s:_statusline.mode_upper, mode(), '')
endfunction

function! jieFunc#mode_lower() abort
    return get(s:_statusline.mode_lower, mode(), '')
endfunction
