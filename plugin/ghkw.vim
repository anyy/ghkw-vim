
if !exists('g:ghkw_bin')
  let g:ghkw_bin = 'ghkw'
endif

function! s:FindSelected()
  let bin = g:ghkw_bin
  if !executable(bin)
    echom 'ghkw-vim: ghkw binary not found.'
    return
  endif

  let key = GetSelected() 
  let out = system(bin . " " . key)
  echo out
endfunction

function! s:FindArgs(...)
  let bin = g:ghkw_bin
  if !executable(bin)
    echom 'ghkw-vim: ghkw binary not found.'
    return
  endif
  let rq = []
  call extend(rq, a:000)
  let key = join(rq, ' ')
  let out = system(bin . " " . key)
  echo out
endfunction

function! GetSelected()
    let [lnum1, col1] = getpos("'<")[1:2]
    let [lnum2, col2] = getpos("'>")[1:2]
    let lines = getline(lnum1, lnum2)
    if lnum1 == 0 && lnum2 == 0 && col1 == 0 && col2 == 0
        return ''
    endif
    let lines[-1] = lines[-1][:col2 - (&selection == 'inclusive' ? 1 : 2)]
    let lines[0] = lines[0][col1 - 1:]
    return join(lines, "\n")
endfunction

comman! -nargs=+ Ghkw call s:FindArgs(<f-args>)
comman! -range GhkwSelected <line1>,<line2>call s:FindSelected()
