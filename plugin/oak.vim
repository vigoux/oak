" Last Change: 2022 May 03

if exists('g:oak_statusline')
  augroup OakWinStatusline
      autocmd!
      autocmd WinEnter * setlocal statusline=%!oak#StatusLineActive()
      autocmd WinLeave * setlocal statusline=%!oak#StatusLineInactive()
  augroup END

  " Pour avoir un bon defaut
  set statusline=%!oak#StatusLineActive()
endif
