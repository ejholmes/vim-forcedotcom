" Tag support for Apex by using c# settings
let g:tlist_apex_settings = 'c#;' .
    \ 'f:field;' .
    \ 'p:property;' .
    \ 'i:interface;' .
    \ 'c:class;' .
    \ 'm:method'

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
