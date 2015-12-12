" Vim ftdetect file
" Language:     TmngDocument
" Maintainer:   maxmellon

if exists("g:loaded_tmng_plugin")
  finish
endif

let g:loaded_tmng_plugin = 1

if !exists("g:md2tmng_executable_script")
  let g:md2tmng_executable_script = "md2tmng"
endif

