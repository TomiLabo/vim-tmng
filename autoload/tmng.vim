scriptencoding urf-8
" Language:     TmngDocument
" Maintainer:   MaxMellon
" TODO:         There are some bugs, add << >>

let s:cpo_orig = &cpoptions
set cpoptions&vim

function! tmng#create_template() abort
  let s:head = tmng#create_header()
  let s:title = tmng#create_title()
  let s:subtitle = tmng#create_subtitle()
  let s:schedule = tmng#create_schedule()
  call tmng#puts_template(s:head, s:title, s:subtitle, s:schedule)
endfunction

function! tmng#create_header() abort
  if !exists('g:tmng_student_id')
    let g:tmng_student_id = 's00t000'
  endif
  let s:header = '■ ' . g:tmng_student_id . ' '
        \      . '[]' . ' ' . strftime('%Y.%m.%d(%a)')
  return s:header
endfunction

function! tmng#create_title() abort
  if !exists('g:tmng_title_template')
    let g:tmng_title_template = ''
  endif
  let s:title = '● ' . g:tmng_title_template
  return s:title
endfunction

function! tmng#create_subtitle() abort
  if !exists('g:tmng_subtitle_template')
    let g:tmng_subtitle_template = ''
  endif
  let s:subtitle = '◎ ' . g:tmng_subtitle_template
  return s:subtitle
endfunction

function! tmng#create_schedule() abort
  let s:schedule = '○ ' . strftime('%Y.%m.%d(%a)')
        \        . ' Event [Auter] 00:00-00:00 (Type) <Place>'
  return s:schedule
endfunction

function! tmng#puts_template(head, title, subtitle, schedule) abort
  call append(0, a:head)
  call append(1, '')
  call append(2, a:title)
  call append(3, '')
  call append(4, a:subtitle)
  call append(5, '')
  call append(6, '● 予定')
  call append(7, '')
  call append(8, a:schedule)
  call append(9, a:schedule)
  call append(10, '')
endfunction

let &cpoptions = s:cpo_orig
unlet s:cpo_orig
