if exists("g:loaded_sohi") | finish | endif
let g:loaded_sohi = 1

command! -nargs=0 SoHiStack echo sohi#stack()
command! -nargs=0 SoHiLight echo sohi#lights(-1)
command! -nargs=? SoHiLights echo sohi#lights(<args>)

noremap <silent> <Plug>(sohi_light)  :<C-U>echo sohi#lights(-1)<CR>
noremap <silent> <Plug>(sohi_lights) :<C-U>echo sohi#lights()<CR>
noremap <silent> <Plug>(sohi_stack)  :<C-U>echo sohi#stack()<CR>
