scriptencoding urf-8
" Vim ftplugin file
" Language:     TmngDocument
" Maintainer:   maxmellon

setlocal makeprg=onion\ -f=errorformats\ %
setlocal errorformat=%f\|%l\ col\ %c\|\ %mk

if executable('onion')
  augroup vim-tmng
    autocmd!
    autocmd BufWrite *.tmng cclose | make | copen | redraw
  augroup END
endif

