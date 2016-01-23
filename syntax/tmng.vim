" Vim syntax file
" Language:     TmngDocument
" Maintainer:   MaxMellon
" TODO:         There are some bugs, add << >>
scriptencoding utf-8

if exists('b:current_syntax')
  finish
endif

if v:version < 600
  syntax clear
endif

let s:cpo_orig=&cpoptions
set cpoptions&vim

" syntax {{{
let b:current_syntax = 'tmng'

syntax match TmngH1 /■\ [^■]*$/ contains=TmngProject,TmngSubProject
syntax match TmngH1 /□\ [^□]*$/ contains=TmngProject,TmngSubProject
syntax match TmngH2 /●\[^●]*$/
syntax match TmngH3 /◎\ [^◎]*$/
syntax match TmngList /○\ [^○]*$/
    \ contains=TmngDate,TmngPlace,TmngEvent,TmngBold,TmngTime
syntax match TmngDate /\v\d+(\.+\d+)+(\([日|月|火|水|木|金|土]+\))+/ contained
syntax match TmngBold /\[.*\]/ contained
syntax match TmngTime /\v\d{2}:\d{2}-\d{2}:\d{2}/ contained
syntax match TmngPlace /\zs<.*>/ contained
syntax match TmngEvent /\zs(.*)/ contained
syntax match TmngProject /\[[A-z]*\]*/ contained
syntax match TmngSubProject /{[A-z]*}*/ contained
syntax match TmngRemarks /\v^[●\ 備考[^●]*$|■\ 備考[^■]*$]/

highlight default link TmngH1 Statement
highlight default link TmngH2 Structure
highlight default link TmngH3 PreProc
highlight default link TmngList String
highlight default link TmngRemarks TODO
highlight default link TmngTime Constant
highlight default link TmngBold PreProc
highlight default link TmngDate Structure
highlight default link TmngEvent Number
highlight default link TmngPlace Statement
highlight default link TmngProject Constant
highlight default link TmngSubProject Number
" }}}

let &cpoptions=s:cpo_orig
unlet s:cpo_orig

