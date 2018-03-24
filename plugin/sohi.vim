if exists("g:loaded_sohi") | finish | endif
let g:loaded_sohi = 1

command! -nargs=0 SoHiStack call sohi#stack()
command! -nargs=0 SoHiLight call sohi#lights(-1)
command! -nargs=? SoHiLights call sohi#lights(<args>)

noremap <silent> <Plug>(sohi_light)  :<C-U>call sohi#lights(-1)<CR>
noremap <silent> <Plug>(sohi_lights) :<C-U>call sohi#lights()<CR>
noremap <silent> <Plug>(sohi_stack)  :<C-U>call sohi#stack()<CR>
