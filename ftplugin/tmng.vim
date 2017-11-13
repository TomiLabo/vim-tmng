scriptencoding urf-8
" Vim ftplugin file
" Language:     TmngDocument
" Maintainer:   maxmellon

let s:vim_tmng_auto_fix_enable = get(g:, 'vim_tmng_auto_fix_enable', 1)

if s:vim_tmng_auto_fix_enable
  setlocal makeprg=onion\ --fix\ -f=errorformats\ %
else
  setlocal makeprg=onion\ -f=errorformats\ %
endif
setlocal errorformat=%f\|%l\ col\ %c\|\ %m

if executable('onion')
  augroup vim-tmng
    autocmd!
    autocmd BufWrite *.tmng cclose | make | copen | redraw
  augroup END
endif

