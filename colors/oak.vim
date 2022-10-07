" Last Change: 2022 Oct 07
set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'oak'

let g:terminal_color_0  = g:oak#palette.trunk1
let g:terminal_color_1  = g:oak#palette.petal1
let g:terminal_color_2  = g:oak#palette.fur2
let g:terminal_color_3  = g:oak#palette.petal2
let g:terminal_color_4  = g:oak#palette.leaf3
let g:terminal_color_5  = g:oak#palette.leaf1
let g:terminal_color_6  = g:oak#palette.fur1
let g:terminal_color_7  = g:oak#palette.trunk4

let g:terminal_color_8  = g:oak#palette.trunk2
let g:terminal_color_9  = g:oak#palette.petal1
let g:terminal_color_10 = g:oak#palette.fur2
let g:terminal_color_11 = g:oak#palette.petal2
let g:terminal_color_12 = g:oak#palette.leaf3
let g:terminal_color_13 = g:oak#palette.leaf1
let g:terminal_color_14 = g:oak#palette.leaf2
let g:terminal_color_15 = g:oak#palette.trunk5

call oak#hi('Bold',       g:oak#palette.trunk4,  '',     'bold')
call oak#hi('Italic',     g:oak#palette.trunk4,  '',     'italic')
call oak#hi('Underlined', g:oak#palette.fur4, '',     'underline')

" nvim
call oak#hi('Normal',     g:oak#palette.trunk5,  g:oak#palette.trunk1)
call oak#hi('Visual',     '',       g:oak#palette.trunk2)
call oak#hi('VisualNOS',  '',       g:oak#palette.trunk2)
call oak#hi('Search',     g:oak#palette.trunk2, g:oak#palette.fur3)
call oak#hi('IncSearch',  g:oak#palette.trunk2, g:oak#palette.trunk4)

call oak#hi('MatchParen', '',  g:oak#palette.trunk2)
call oak#hi('Whitespace',  g:oak#palette.trunk2)
call oak#hi('NonText',     g:oak#palette.trunk2)
call oak#hi('EndOfBuffer', g:oak#palette.trunk3)

call oak#hi('Question',     g:oak#palette.fur2)
call oak#hi('Title',        g:oak#palette.fur3)
call oak#hi('Directory',    g:oak#palette.fur1)
call oak#hi('SpecialKey',   g:oak#palette.fur4)
call oak#hi('ErrorMsg',     g:oak#palette.petal1, g:oak#palette.trunk1)
call oak#hi('WarningMsg',   g:oak#palette.fur3, g:oak#palette.trunk1)
call oak#hi('ModeMsg',      g:oak#palette.trunk4,   g:oak#palette.trunk1)
call oak#hi('MoreMsg',      g:oak#palette.fur1,  g:oak#palette.trunk1)
call oak#hi('MsgSeparator', '',        g:oak#palette.trunk2)

call oak#hi('Cursor',       g:oak#palette.trunk1, g:oak#palette.trunk4)
call oak#hi('iCursor',      g:oak#palette.trunk1, g:oak#palette.trunk4)
call oak#hi('Conceal',      g:oak#palette.trunk3)
call oak#hi('TermCursorNC', '',       g:oak#palette.trunk2)
call oak#hi('CursorColumn', '',       g:oak#palette.trunk2)
call oak#hi('CursorLine',   '',       g:oak#palette.trunk2)
call oak#hi('CursorLineNr', g:oak#palette.trunk4,  g:oak#palette.trunk2)
call oak#hi('ColorColumn',  '',       g:oak#palette.trunk2)
call oak#hi('LineNr',       g:oak#palette.trunk3)
highlight! default link FoldColumn LineNr
call oak#hi('SignColumn',   g:oak#palette.trunk2, g:oak#palette.trunk1)
call oak#hi('StatusLine',   g:oak#palette.trunk4, g:oak#palette.trunk2, 'bold')
call oak#hi('StatusLineNC', g:oak#palette.trunk3, g:oak#palette.trunk2)
call oak#hi('WinBar',   g:oak#palette.trunk5, g:oak#palette.trunk1, 'bold')
call oak#hi('WinBarNC', g:oak#palette.trunk5, g:oak#palette.trunk1)
call oak#hi('Folded',       g:oak#palette.trunk5, g:oak#palette.trunk2)

call oak#hi('VertSplit',    g:oak#palette.trunk3, g:oak#palette.trunk1)

call oak#hi('Pmenu',      g:oak#palette.trunk4, g:oak#palette.trunk2)
call oak#hi('PmenuSel',   g:oak#palette.trunk5, g:oak#palette.trunk3)
call oak#hi('PmenuSbar',  '',  g:oak#palette.trunk3)
call oak#hi('PmenuThumb', '',  g:oak#palette.trunk2)
hi! link Wildmenu Pmenu

call oak#hi('TabLineSel', g:oak#palette.trunk5)
call oak#hi('TabLine', g:oak#palette.trunk5, g:oak#palette.trunk2)
call oak#hi('TabLineFill', g:oak#palette.trunk5, g:oak#palette.trunk2)

call oak#hi('SpellBad',   '', '', 'undercurl', g:oak#palette.petal1)
call oak#hi('SpellCap',   '', '', 'undercurl', g:oak#palette.leaf2)
call oak#hi('SpellLocal', '',   '', 'undercurl', g:oak#palette.trunk4)
call oak#hi('SpellRare',  '',   '', 'undercurl', g:oak#palette.trunk5)

call oak#hi('healthError',   g:oak#palette.petal1)
call oak#hi('healthSuccess', g:oak#palette.leaf3)
call oak#hi('healthWarning', g:oak#palette.petal2)

" Floating windows
highlight! default link NormalFloat Normal
highlight! default link FloatBorder Normal

" language builtin
call oak#hi('Boolean',        g:oak#palette.petal2,  '',        'bold')
call oak#hi('Character',      g:oak#palette.fur2)
call oak#hi('Comment',        g:oak#palette.fur1,  '',        'italic')
call oak#hi('Conditional',    g:oak#palette.leaf1)
call oak#hi('Constant',       g:oak#palette.petal2)
call oak#hi('Define',         g:oak#palette.leaf1)
call oak#hi('Delimiter',      g:oak#palette.trunk5)
call oak#hi('Error',          g:oak#palette.petal1, g:oak#palette.trunk1)
call oak#hi('Exception',      g:oak#palette.leaf3)
call oak#hi('Float',          g:oak#palette.petal2)
call oak#hi('Function',       g:oak#palette.fur3)
call oak#hi('Identifier',     g:oak#palette.fur2)
call oak#hi('Include',        g:oak#palette.leaf1)
call oak#hi('Keyword',        g:oak#palette.leaf1)
call oak#hi('Label',          g:oak#palette.leaf2)
call oak#hi('Macro',          g:oak#palette.leaf1)
call oak#hi('Number',         g:oak#palette.petal2)
call oak#hi('Operator',       g:oak#palette.leaf1)
call oak#hi('PreCondit',      g:oak#palette.leaf3)
call oak#hi('PreProc',        g:oak#palette.leaf1)
call oak#hi('Repeat',         g:oak#palette.leaf1)
call oak#hi('Special',        g:oak#palette.fur2)
call oak#hi('SpecialChar',    g:oak#palette.leaf3)
call oak#hi('SpecialComment', g:oak#palette.fur1,  '',        'italic')
call oak#hi('Statement',      g:oak#palette.leaf3)
call oak#hi('StorageClass',   g:oak#palette.leaf3)
call oak#hi('String',         g:oak#palette.leaf2)
call oak#hi('Structure',      g:oak#palette.leaf3)
call oak#hi('Tag',            g:oak#palette.trunk4)
call oak#hi('Todo',           g:oak#palette.fur3)
call oak#hi('Type',           g:oak#palette.leaf3,  '',        'italic')
call oak#hi('Typedef',        g:oak#palette.leaf3)

call oak#hi('DiffAdd',    g:oak#palette.leaf3)
call oak#hi('DiffChange', g:oak#palette.petal2)
call oak#hi('DiffDelete', g:oak#palette.petal1)
hi! link diffAdded DiffAdd
hi! link diffRemoved DiffDelete

" The diagnostic api changed in version 0.6, and highlights changed too
if has('nvim-0.6')
  call oak#hi('DiagnosticError',       g:oak#palette.petal1)
  call oak#hi('DiagnosticWarn',     g:oak#palette.petal2)
  call oak#hi('DiagnosticInfo', g:oak#palette.leaf2)
  call oak#hi('DiagnosticHint',        g:oak#palette.fur4)
  if get(g:, "oak_virtualtext_bg", 0) == 1
    call oak#hi('DiagnosticVirtualTextError',       g:oak#palette.petal1, g:oak#palette.trunk2)
    call oak#hi('DiagnosticVirtualTextWarning',     g:oak#palette.petal2, g:oak#palette.trunk2)
    call oak#hi('DiagnosticVirtualTextInformation', g:oak#palette.leaf2)
    call oak#hi('DiagnosticVirtualTextHint',        g:oak#palette.fur4)
  endif
else
  call oak#hi('LspDiagnosticsDefaultError',       g:oak#palette.petal1)
  call oak#hi('LspDiagnosticsDefaultWarning',     g:oak#palette.petal2)
  call oak#hi('LspDiagnosticsDefaultInformation', g:oak#palette.leaf2)
  call oak#hi('LspDiagnosticsDefaultHint',        g:oak#palette.fur4)
  call oak#hi('LspDiagnosticsUnderlineError',       g:oak#palette.petal1, '', 'underline')
  call oak#hi('LspDiagnosticsUnderlineWarning',     g:oak#palette.petal2, '', 'underline')
  call oak#hi('LspDiagnosticsUnderlineInformation', g:oak#palette.leaf2, '', 'underline')
  call oak#hi('LspDiagnosticsUnderlineHint',        g:oak#palette.fur4, '', 'underline')
  if get(g:, "oak_virtualtext_bg", 0) == 1
    call oak#hi('LspDiagnosticsVirtualTextError',       g:oak#palette.petal1, g:oak#palette.trunk2)
    call oak#hi('LspDiagnosticsVirtualTextWarning',     g:oak#palette.petal2, g:oak#palette.trunk2)
    call oak#hi('LspDiagnosticsVirtualTextInformation', g:oak#palette.leaf2)
    call oak#hi('LspDiagnosticsVirtualTextHint',        g:oak#palette.fur4)
  endif
endif

hi! link ArchitextSearch1 Search
call oak#hi('ArchitextSearch2', g:oak#palette.trunk1, g:oak#palette.leaf1)
call oak#hi('ArchitextSearch3', g:oak#palette.trunk1, g:oak#palette.leaf2)
call oak#hi('ArchitextSearch4', g:oak#palette.trunk1, g:oak#palette.petal1)
call oak#hi('ArchitextSearch5', g:oak#palette.trunk1, g:oak#palette.petal2)
call oak#hi('ArchitextSearch6', g:oak#palette.trunk1, g:oak#palette.trunk4)

call oak#hi('LspReferenceText', g:oak#palette.fur4, '', 'underline')
hi! link LspReferenceRead LspReferenceText
hi! link LspReferenceWrite LspReferenceText
highlight! link LspCodeLens Comment
highlight! link LspCodeLensSeparator Comment
