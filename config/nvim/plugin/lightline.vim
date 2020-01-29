
" g:lightline {{{
let g:lightline = {
    \ 'colorscheme': 'challenger_deep',
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '', 'right': '' },
    \ 'active': {
    \   'left': [
    \     [ 'mode', 'paste' ],
    \     [ 'fugitive', 'readonly', 'filepath', 'modified' ],
    \     [ 'linter_checking', 'linter_warnings', 'linter_errors', 'linter_ok' ]
    \   ],
    \   'right': [
    \     [ 'percent', 'lineinfo' ],
    \     [ 'filetype' ],
    \     [ 'fileformat', 'fileencoding' ]
    \   ]
    \ },
    \ 'tabline': {
    \   'left': [[ 'tabs' ]],
    \   'right': [[ 'none' ]]
    \ },
    \ 'component_expand': {
    \   'linter_checking': 'lightline#ale#checking',
    \   'linter_warnings': 'lightline#ale#warnings',
    \   'linter_errors': 'lightline#ale#errors',
    \   'linter_ok': 'lightline#ale#ok',
    \ },
    \ 'component_type': {
    \   'linter_warnings': 'warning',
    \   'linter_errors': 'error',
    \ },
    \ 'component_function': {
    \   'fugitive': 'LightLineFugitive',
    \   'readonly': 'LightLineReadOnly',
    \   'filepath': 'LightLineFilePath'
    \ }
    \ }
" }}}

let g:lightline#ale#indicator_checking = '(」・ω・)」うー '
let g:lightline#ale#indicator_ok = '(/・ω・)/にゃー'

function! LightLineFugitive() abort " {{{
    try
        return exists('*fugitive#head') ? ' ' . fugitive#head() : ''
    catch
    endtry
    return ''
endfunction " }}}

function! LightLineReadOnly() abort " {{{
    return &filetype !~? 'help' && &readonly ? '' : ''
endfunction " }}}

function! LightLineFilePath() abort " {{{
    " ファイル名を下位3階層のみの表示にする
    try
        if expand('%:p:~') =~# '^suda://'
            let g:is_suda = 'suda://'
        else
            let g:is_suda = ''
        endif

        if expand('%:p:~:s?suda://??') =~# '^/[^/]*\/[^/]*\/[^/]*$'
            return expand('%:p:~')
        elseif expand('%:p:~:s?suda://??') =~# '/[^/]*\/[^/]*\/[^/]*$'
            return g:is_suda . expand('%:p:~:s?suda://??:s?.*\(/[^/]*\/[^/]*\/[^/]*\)$?...\1?')
        else
            return expand('%:p:~')
        endif
    catch
    endtry
    return ''
endfunction "}}}

" vim:set foldmethod=marker: