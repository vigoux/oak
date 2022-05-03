" Last Change: 2022 May 03

if exists('g:oak_statusline')
  augroup OakWinStatusline
      autocmd!
      autocmd WinEnter * setlocal statusline=%!oak#StatusLineActive()
      autocmd WinLeave * setlocal statusline=%!oak#StatusLineInactive()
  augroup END

  " Set up a sane default
  set statusline=%!oak#StatusLineActive()
endif
