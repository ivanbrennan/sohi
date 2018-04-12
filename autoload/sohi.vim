if exists("g:autoloaded_sohi") | finish | endif
let g:autoloaded_sohi = 1

func! sohi#stack() abort
  return map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endf

func! sohi#lights(...) abort
  let l:stack  = sohi#stack()
  let l:arg    = a:0 ? a:1 : 0
  let l:offset = max([l:arg, -len(l:stack)])

  exec 'echo expand("<cword>")'
  exec 'echo " "'

  for name in l:stack[l:offset:]
    exec 'verbose hi ' . name
  endfor
endf
