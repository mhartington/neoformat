function! neoformat#formatters#scss#enabled() abort
   return ['sassconvert', 'stylefmt', 'prettydiff', 'csscomb']
endfunction

function! neoformat#formatters#scss#sassconvert() abort
    return {
            \ 'exe': 'sass-convert',
            \ 'args': ['-F scss', '-T scss', '-s'],
            \ 'stdin': 1,
            \ }
endfunction

function! neoformat#formatters#scss#csscomb() abort
    return neoformat#formatters#css#csscomb()
endfunction

function! neoformat#formatters#scss#prettydiff() abort
    return neoformat#formatters#css#prettydiff()
endfunction

function! neoformat#formatters#scss#stylefmt() abort
    return neoformat#formatters#css#stylefmt()
endfunction
