if exists("g:loaded_sohi") | finish | endif
let g:loaded_sohi = 1

command! -nargs=0 SoHiStack call sohi#stack()
command! -nargs=0 SoHiLight call sohi#lights(-1)
command! -nargs=? SoHiLights call sohi#lights(<args>)
