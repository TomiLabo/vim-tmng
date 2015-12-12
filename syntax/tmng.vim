" Vim syntax file
" Language:     TmngDocument
" Maintainer:   MaxMellon
" TODO:         There are some bugs, add << >>

if exists("b:current_syntax")
  finish
endif

if version < 600
  syntax clear
endif

let s:cpo_orig=&cpo
set cpo&vim

" syntax {{{
let b:current_syntax = "tmng"

syntax match TmngH1 /■*/
highlight default link TmngH1 Structure
" }}}

let &cpo=s:cpo_orig
unlet s:cpo_orig

