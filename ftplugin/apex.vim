" Vim filetype plugin file
" Language:	Apex
" Maintainer:	ViViDboarder <ViViDboarder@gmail.com>
" Last Change:  2015 April 24
" URL:		http://github.com/ViViDboarder/vim-forcedotcom

" This is heavily based on the java.vim filetype plugin
" http://dwsharp.users.sourceforge.net/vim/ftplugin

if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1

" Make sure the continuation lines below do not cause problems in
" compatibility mode.
let s:save_cpo = &cpo
set cpo-=C

" Set 'formatoptions' to break comment lines but not other lines,
" and insert the comment leader when hitting <CR> or using "o".
setlocal formatoptions-=t formatoptions+=croql

" Set 'comments' to format dashed lists in comments. Behaves just like C.
setlocal comments& comments^=sO:*\ -,mO:*\ \ ,exO:*/

setlocal commentstring=//%s

if exists('loaded_tlist')
    let g:tlist_apex_settings = 'c#;' .
        \ 'f:field;' .
        \ 'p:property;' .
        \ 'i:interface;' .
        \ 'c:class;' .
        \ 'm:method'
endif

if exists('loaded_tagbar')
    let g:tagbar_type_apex = {
        \ 'ctagstype' : 'c#',
        \ 'kinds' : [
            \ 'f:fields',
            \ 'p:properties',
            \ 'g:enum types',
            \ 'e:enum constants',
            \ 'i:interfaces',
            \ 'c:classes',
            \ 'm:methods'
        \],
        \ 'kind2scope' : {
            \ 'g' : 'enum',
            \ 'i' : 'interface',
            \ 'c' : 'class'
        \},
        \ 'sro' : '.'
    \ }
endif

if exists('loaded_tcomment')
    let g:tcommentGuessFileType_apex = 'java'
endif

" Undo the stuff we changed.
let b:undo_ftplugin = " formatoptions< comments< commentstring<"

" Restore the saved compatibility options.
let &cpo = s:save_cpo
unlet s:save_cpo
