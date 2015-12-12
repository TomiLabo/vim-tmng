scriptencoding utf-8
" Vim syntax file
" Language:     TmngDocument
" Maintainer:   MaxMellon
" TODO:         There are some bugs, add << >>

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

syntax match TmngH1 /■[^■]*$/ contains=TmngProject,TmngSubProject
syntax match TmngH1 /□[^□]*$/ contains=TmngProject,TmngSubProject
syntax match TmngH2 /●[^●]*$/
syntax match TmngH3 /◎[^◎]*$/
syntax match TmngList /○[^○]*$/
syntax match TmngProject /\[[A-z]*\]*/ contained
syntax match TmngSubProject /{[A-z]*}*/ contained
syntax match TmngRemarks /■\ 備考/

highlight default link TmngH1 Statement
highlight default link TmngH2 Structure
highlight default link TmngH3 PreProc
highlight default link TmngList Identifier
highlight default link TmngRemarks TODO
highlight default link TmngProject Constant
highlight default link TmngSubProject Number
" }}}

let &cpoptions=s:cpo_orig
unlet s:cpo_orig

