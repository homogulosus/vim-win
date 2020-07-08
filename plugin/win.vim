" ===========================================
" Name: vim-win
" Author: homogulosus
" License: same as neovim
" Last Update: Wed Jul  8 19:04:12 EDT 2020
" ===========================================

if exists('g:loaded_vim-win')
  finish
endif
let g:loaded_vim-win= 1

let s:save_cpo = &cpo
set cpo&vim

command! HideLeftColumns call win#hide_left_columns()
command! ShowLeftColumns call win#show_left_columns()
command! ToggleRelativeNumber call win#toggle_relative_number()
command! -nargs=0 -bang FitWindowSize call win#fit_window_size_to_displayed_content(expand('<bang>') != '!')

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set ft=vim sw=2 sts=2:
