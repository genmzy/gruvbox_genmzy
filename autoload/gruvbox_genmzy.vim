" =============================================================================
" URL: https://github.com/sainnhe/gruvbox_genmzy
" Filename: autoload/gruvbox_genmzy.vim
" Author: sainnhe
" Email: sainnhe@gmail.com
" License: MIT License
" =============================================================================

" g:gruvbox_genmzy#tmux: is in tmux < 2.9 or not {{{
let g:gruvbox_genmzy#tmux = executable('tmux') && $TMUX !=# '' ?
                  \ (str2float(system("tmux -V | grep -oE '[0-9]+\.[0-9]*'")) < 2.9 ?
                    \ 1 :
                    \ 0) :
                  \ 0 "}}}
function! gruvbox_genmzy#get_configuration() "{{{
  return {
        \ 'background': get(g:, 'gruvbox_genmzy_background', 'medium'),
        \ 'transparent_background': get(g:, 'gruvbox_genmzy_transparent_background', 0),
        \ 'disable_italic_comment': get(g:, 'gruvbox_genmzy_disable_italic_comment', 0),
        \ 'enable_italic': get(g:, 'gruvbox_genmzy_enable_italic', 0),
        \ 'cursor': get(g:, 'gruvbox_genmzy_cursor', 'auto'),
        \ 'menu_selection_background': get(g:, 'gruvbox_genmzy_menu_selection_background', 'white'),
        \ 'sign_column_background': get(g:, 'gruvbox_genmzy_sign_column_background', 'default'),
        \ 'current_word': get(g:, 'gruvbox_genmzy_current_word', get(g:, 'gruvbox_genmzy_transparent_background', 0) == 0 ? 'grey background' : 'bold'),
        \ 'lightline_disable_bold': get(g:, 'gruvbox_genmzy_lightline_disable_bold', 0),
        \ 'diagnostic_text_highlight': get(g:, 'gruvbox_genmzy_diagnostic_text_highlight', 0),
        \ 'diagnostic_line_highlight': get(g:, 'gruvbox_genmzy_diagnostic_line_highlight', 0),
        \ 'diagnostic_virtual_text': get(g:, 'gruvbox_genmzy_diagnostic_virtual_text', 'grey'),
        \ 'better_performance': get(g:, 'gruvbox_genmzy_better_performance', 0),
        \ }
endfunction "}}}


"" fill it with absolute colors
"let s:gb.dark0_hard  = ['#1d2021', 234]     " 29-32-33
"let s:gb.dark0       = ['#282828', 235]     " 40-40-40
"let s:gb.dark1_hard  = s:gb.dark0
"let s:gb.dark0_soft  = ['#32302f', 236]     " 50-48-47
"let s:gb.dark2_hard  = s:gb.dark0_soft
"let s:gb.dark1       = ['#3c3836', 237]     " 60-56-54
"let s:gb.dark2       = ['#504945', 239]     " 80-73-69
"let s:gb.dark3       = ['#665c54', 241]     " 102-92-84
"let s:gb.dark4       = ['#7c6f64', 243]     " 124-111-100
"let s:gb.dark4_256   = ['#7c6f64', 243]     " 124-111-100

"let s:gb.gray_245    = ['#928374', 245]     " 146-131-116
"let s:gb.gray_244    = ['#928374', 244]     " 146-131-116

"let s:gb.light0_hard = ['#f9f5d7', 230]     " 249-245-215
"let s:gb.light0      = ['#fbf1c7', 229]     " 253-244-193
"let s:gb.light0_soft = ['#f2e5bc', 228]     " 242-229-188
"let s:gb.light1      = ['#ebdbb2', 223]     " 235-219-178
"let s:gb.light2      = ['#d5c4a1', 250]     " 213-196-161
"let s:gb.light3      = ['#bdae93', 248]     " 189-174-147
"let s:gb.light4      = ['#a89984', 246]     " 168-153-132
"let s:gb.light4_256  = ['#a89984', 246]     " 168-153-132

"let s:gb.bright_red     = ['#fb4934', 167]     " 251-73-52
"let s:gb.bright_green   = ['#b8bb26', 142]     " 184-187-38
"let s:gb.bright_yellow  = ['#fabd2f', 214]     " 250-189-47
"let s:gb.bright_blue    = ['#83a598', 109]     " 131-165-152
"let s:gb.bright_purple  = ['#d3869b', 175]     " 211-134-155
"let s:gb.bright_aqua    = ['#8ec07c', 108]     " 142-192-124
"let s:gb.bright_orange  = ['#fe8019', 208]     " 254-128-25

"let s:gb.neutral_red    = ['#cc241d', 124]     " 204-36-29
"let s:gb.neutral_green  = ['#a6a51c', 106]     " 152-151-26
"let s:gb.neutral_yellow = ['#d79921', 172]     " 215-153-33
"let s:gb.neutral_blue   = ['#458588', 66]      " 69-133-136
"let s:gb.neutral_purple = ['#b16286', 132]     " 177-98-134
"let s:gb.neutral_aqua   = ['#689d6a', 72]      " 104-157-106
"let s:gb.neutral_orange = ['#d65d0e', 166]     " 214-93-14

"let s:gb.faded_red      = ['#9d0006', 88]      " 157-0-6
"let s:gb.faded_green    = ['#79740e', 100]     " 121-116-14
"let s:gb.faded_yellow   = ['#b57614', 136]     " 181-118-20
"let s:gb.faded_blue     = ['#076678', 24]      " 7-102-120
"let s:gb.faded_purple   = ['#8f3f71', 96]      " 143-63-113
"let s:gb.faded_aqua     = ['#427b58', 66]      " 66-123-88
"let s:gb.faded_orange   = ['#af3a03', 130]     " 175-58-3


function! gruvbox_genmzy#get_palette(background) "{{{
  let palette1 = {
        \ 'bg0':        ['#1d2021',   '234',  'Black'],
        \ 'bg1':        ['#282828',   '235',  'DarkGrey'],
        \ 'bg2':        ['#32302f',   '236',  'DarkGrey'],
        \ 'bg3':        ['#3c3836',   '238',  'DarkGrey'],
        \ 'bg4':        ['#504945',   '239',  'DarkGrey'],
        \ 'bg_visual':  ['#503946',   '52',   'DarkRed'],
        \ 'bg_red':     ['#4e3e43',   '52',   'DarkRed'],
        \ 'bg_green':   ['#404d44',   '22',   'DarkGreen'],
        \ 'bg_blue':    ['#394f5a',   '17',   'DarkBlue'],
        \ 'bg_yellow':  ['#4a4940',   '136',  'DarkBlue'],
        \ }
  let palette2 = {
        \ 'fg':         ['#f9f5d7',   '223',  'White'],
        \ 'red':        ['#fb4934',   '167',  'Red'],
        \ 'orange':     ['#fe8019',   '167',  'Red'],
        \ 'yellow':     ['#fabd2f',   '214',  'Yellow'],
        \ 'green':      ['#b8bb26',   '208',  'Green'],
        \ 'aqua':       ['#8ec07c',   '108',  'Cyan'],
        \ 'blue':       ['#83a598',   '109',  'Blue'],
        \ 'purple':     ['#d3869b',   '175',  'Magenta'],
        \ 'grey0':      ['#7c6f64',   '243',  'DarkGrey'],
        \ 'grey1':      ['#928374',   '245',  'Grey'],
        \ 'grey2':      ['#928374',   '247',  'LightGrey'],
        \ 'none':       ['NONE',      'NONE', 'NONE']
        \ } "}}}
  return extend(palette1, palette2)
endfunction "}}}
function! gruvbox_genmzy#highlight(group, fg, bg, ...) "{{{
  execute 'highlight' a:group
        \ 'guifg=' . a:fg[0]
        \ 'guibg=' . a:bg[0]
        \ 'ctermfg=' . a:fg[1]
        \ 'ctermbg=' . a:bg[1]
        \ 'gui=' . (a:0 >= 1 ?
          \ (a:1 ==# 'undercurl' ?
            \ (g:gruvbox_genmzy#tmux ?
              \ 'underline' :
              \ 'undercurl') :
            \ a:1) :
          \ 'NONE')
        \ 'cterm=' . (a:0 >= 1 ?
          \ (a:1 ==# 'undercurl' ?
            \ 'underline' :
            \ a:1) :
          \ 'NONE')
        \ 'guisp=' . (a:0 >= 2 ?
          \ a:2[0] :
          \ 'NONE')
endfunction "}}}
function! gruvbox_genmzy#ft_gen(path, last_modified, msg) "{{{
  " Generate the `after/ftplugin` directory.
  let full_content = join(readfile(a:path), "\n") " Get the content of `colors/gruvbox_genmzy.vim`
  let ft_content = []
  let rootpath = gruvbox_genmzy#ft_rootpath(a:path) " Get the path to place the `after/ftplugin` directory.
  call substitute(full_content, '" ft_begin.\{-}ft_end', '\=add(ft_content, submatch(0))', 'g') " Search for 'ft_begin.\{-}ft_end' (non-greedy) and put all the search results into a list.
  for content in ft_content
    let ft_list = []
    call substitute(matchstr(matchstr(content, 'ft_begin:.\{-}{{{'), ':.\{-}{{{'), '\(\w\|-\)\+', '\=add(ft_list, submatch(0))', 'g') " Get the file types. }}}}}}
    for ft in ft_list
      call gruvbox_genmzy#ft_write(rootpath, ft, content) " Write the content.
    endfor
  endfor
  call gruvbox_genmzy#ft_write(rootpath, 'text', "let g:gruvbox_genmzy_last_modified = '" . a:last_modified . "'") " Write the last modified time to `after/ftplugin/text/gruvbox_genmzy.vim`
  if a:msg ==# 'update'
    echohl WarningMsg | echom '[gruvbox_genmzy] Updated ' . rootpath . '/after/ftplugin' | echohl None
  else
    echohl WarningMsg | echom '[gruvbox_genmzy] Generated ' . rootpath . '/after/ftplugin' | echohl None
  endif
endfunction "}}}
function! gruvbox_genmzy#ft_write(rootpath, ft, content) "{{{
  " Write the content.
  let ft_path = a:rootpath . '/after/ftplugin/' . a:ft . '/gruvbox_genmzy.vim' " The path of a ftplugin file.
  " create a new file if it doesn't exist
  if !filereadable(ft_path)
    call mkdir(a:rootpath . '/after/ftplugin/' . a:ft, 'p')
    call writefile([
          \ "if !exists('g:colors_name') || g:colors_name !=# 'gruvbox_genmzy'",
          \ '    finish',
          \ 'endif'
          \ ], ft_path, 'a') " Abort if the current color scheme is not gruvbox_genmzy.
    call writefile([
          \ "if index(g:gruvbox_genmzy_loaded_file_types, '" . a:ft . "') ==# -1",
          \ "    call add(g:gruvbox_genmzy_loaded_file_types, '" . a:ft . "')",
          \ 'else',
          \ '    finish',
          \ 'endif'
          \ ], ft_path, 'a') " Abort if this file type has already been loaded.
  endif
  " If there is something like `call gruvbox_genmzy#highlight()`, then add
  " code to initialize the palette and configuration.
  if matchstr(a:content, 'gruvbox_genmzy#highlight') !=# ''
    call writefile([
          \ 'let s:configuration = gruvbox_genmzy#get_configuration()',
          \ 'let s:palette = gruvbox_genmzy#get_palette(s:configuration.background)'
          \ ], ft_path, 'a')
  endif
  " Append the content.
  call writefile(split(a:content, "\n"), ft_path, 'a')
endfunction "}}}
function! gruvbox_genmzy#ft_rootpath(path) "{{{
  " Get the directory where `after/ftplugin` is generated.
  if (matchstr(a:path, '^/usr/share') ==# '') || has('win32') " Return the plugin directory. The `after/ftplugin` directory should never be generated in `/usr/share`, even if you are a root user.
    return fnamemodify(a:path, ':p:h:h')
  else " Use vim home directory.
    if has('nvim')
      return stdpath('config')
    else
      if has('win32') || has ('win64')
        return $VIM . '/vimfiles'
      else
        return $HOME . '/.vim'
      endif
    endif
  endif
endfunction "}}}
function! gruvbox_genmzy#ft_newest(path, last_modified) "{{{
  " Determine whether the current ftplugin files are up to date by comparing the last modified time in `colors/gruvbox_genmzy.vim` and `after/ftplugin/text/gruvbox_genmzy.vim`.
  let rootpath = gruvbox_genmzy#ft_rootpath(a:path)
  execute 'source ' . rootpath . '/after/ftplugin/text/gruvbox_genmzy.vim'
  return a:last_modified ==# g:gruvbox_genmzy_last_modified ? 1 : 0
endfunction "}}}
function! gruvbox_genmzy#ft_clean(path, msg) "{{{
  " Clean the `after/ftplugin` directory.
  let rootpath = gruvbox_genmzy#ft_rootpath(a:path)
  " Remove `after/ftplugin/**/gruvbox_genmzy.vim`.
  let file_list = split(globpath(rootpath, 'after/ftplugin/**/gruvbox_genmzy.vim'), "\n")
  for file in file_list
    call delete(file)
  endfor
  " Remove empty directories.
  let dir_list = split(globpath(rootpath, 'after/ftplugin/*'), "\n")
  for dir in dir_list
    if globpath(dir, '*') ==# ''
      call delete(dir, 'd')
    endif
  endfor
  if globpath(rootpath . '/after/ftplugin', '*') ==# ''
    call delete(rootpath . '/after/ftplugin', 'd')
  endif
  if globpath(rootpath . '/after', '*') ==# ''
    call delete(rootpath . '/after', 'd')
  endif
  if a:msg
    echohl WarningMsg | echom '[gruvbox_genmzy] Cleaned ' . rootpath . '/after/ftplugin' | echohl None
  endif
endfunction "}}}
function! gruvbox_genmzy#ft_exists(path) "{{{
  return filereadable(gruvbox_genmzy#ft_rootpath(a:path) . '/after/ftplugin/text/gruvbox_genmzy.vim')
endfunction "}}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
