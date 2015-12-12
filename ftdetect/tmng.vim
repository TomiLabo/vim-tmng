" Vim ftdetect file
" Language:     TmngDocument
" Maintainer:   maxmellon

if did_filetype()
  finish
end

autocmd BufRead,BufNewFile *.tmng,*.txt set filetype=tmng
