" Last Change: 2021 Apr 06

if !exists("g:colors_name") || g:colors_name !=? "oak"
  finish
endif

call oak#hi('bibType',     g:oak#palette.fur3)
call oak#hi('bibKey',      g:oak#palette.fur2)
call oak#hi('bibEntryKw',  g:oak#palette.leaf2)
call oak#hi('bibVariable', g:oak#palette.petal2)
