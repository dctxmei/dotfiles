" 設置 Tagbar 子窗口的位置出現在主編輯區的左邊 
"let tagbar_left=1 
" 設置顯示／隱藏標籤列表子窗口的快捷鍵
" 速記：identifier list by tag
map <Leader>ilt :TagbarToggle<CR> 
" 設置標籤子窗口的寬度 
let tagbar_width=24
" tagbar 子窗口中不顯示冗餘幫助信息 
let g:tagbar_compact=1
" 設置 ctags 對哪些代碼標識符生成標籤
let g:tagbar_type_cpp = {
    \ 'kinds' : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0', 
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }
