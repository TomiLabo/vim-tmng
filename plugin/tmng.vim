scriptencoding urf-8
" Vim ftdetect file
" Language:     TmngDocument
" Maintainer:   maxmellon

if exists('g:loaded_tmng_ftplugin')
  finish
endif

let g:loaded_tmng_ftplugin = 1

let s:cpo_orig = &cpoptions
set cpoptions&vim

command! TmngCreateTmplate
      \ call tmng#create_template()

if !exists('g:tmng_student_id')
  let g:tmng_student_id = 's00t000'
endif

if !exists('g:tmng_title_template')
  let g:tmng_title_template = ''
endif

if !exists('g:tmng_subtitle_template')
  let g:tmng_subtitle_template = ''
endif

if !exists('g:md2tmng_executable_script')
  let g:md2tmng_executable_script = 'md2tmng'
endif

let &cpoptions = s:cpo_orig
unlet s:cpo_orig
