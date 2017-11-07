scriptencoding urf-8
" Vim ftplugin file
" Language:     TmngDocument
" Maintainer:   maxmellon
setlocal makeprg=onion\ -f=errorformats\ %
setlocal errorformat=%f\|%l\ col\ %c\|\ %mk
