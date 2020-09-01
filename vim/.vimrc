" 緩存目錄
let g:root_path = $HOME . '/.cache/vim'
" 插件目錄
let g:plugins_path = g:root_path . '/plugged'
" 配置所在目錄
let g:config_root_path = expand('<sfile>:p:h') . '/.config/vim'
" 插件配置
let s:plugin_config_home = g:config_root_path . '/plugins'
" 定義載入配置的指令
command! -nargs=1 LoadScript exec 'source' . g:config_root_path . '/' . '<args>'

call plug#begin(g:plugins_path)
LoadScript plug.vim
call plug#end()

" 判斷插件是否載入
function! PlugLoaded(name)
    return (
                \ has_key(g:plugs, a:name) &&
                \ isdirectory(g:plugs[a:name].dir) &&
                \ stridx(&rtp, g:plugs[a:name].dir) >= 0
    )
endfunction

" 判斷插件是否已安裝
function! g:HasInstall(plugin_name) abort
    let l:plugin_path = g:plugins_path . "/" . a:plugin_name
    if isdirectory(l:plugin_path)
        return v:true
    else
        return v:false
    endif
endfunction

" 載入基礎配置
LoadScript base.vim
" 載入主題配置
LoadScript theme.vim

" 載入插件配置
for s:plugin_name in g:plugs_order
    " 插件已安裝則載入相應配置
    if g:HasInstall(s:plugin_name)
        let s:config_path = s:plugin_config_home . "/" . s:plugin_name . ".vim"
        if filereadable(s:config_path)
            exec 'source' fnameescape(s:config_path)
        endif
    endif
endfor
