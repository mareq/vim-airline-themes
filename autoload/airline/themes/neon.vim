" Neon theme for Airline
"
" Maintainer:  Marek Balint <mareq@balint.eu>
" Last change: 2021 Apr 10

" Create empty palette
let g:airline#themes#neon#palette = {}

" Define individual colors
"
" TODO: Provide possibility of configuring these colors from vim rc-file.
" TODO: Provide single source of these colors to both this theme and Neon colorscheme.
" TODO: Check terminal capabilities and provide fallback for cases when 256 colors is not available.
" TODO: Provide possibility of enforcing fallback to less than 256 colors by configuration in vim rc-file
let s:Black =
  \{
    \ 'base_dark':  { 'cterm': 'black',        'gui': '#000000' },
    \ 'base_light': { 'cterm': 'darkgray',     'gui': '#000000' },
    \ 'dark':       { 'cterm': 232,            'gui': '#000000' },
    \ 'medium':     { 'cterm': 236,            'gui': '#000000' },
    \ 'light':      { 'cterm': 240,            'gui': '#000000' },
  \}
let s:Blue =
  \{
    \ 'base_dark':  { 'cterm': 'darkblue',     'gui': '#000000' },
    \ 'base_light': { 'cterm': 'blue',         'gui': '#000000' },
    \ 'dark':       { 'cterm':  63,            'gui': '#000000' },
    \ 'medium':     { 'cterm':  69,            'gui': '#000000' },
    \ 'light':      { 'cterm':  75,            'gui': '#000000' },
  \}
let s:Red =
  \{
    \ 'base_dark':  { 'cterm': 'darkred',      'gui': '#000000' },
    \ 'base_light': { 'cterm': 'red',          'gui': '#000000' },
    \ 'dark':       { 'cterm': 124,            'gui': '#000000' },
    \ 'medium':     { 'cterm': 160,            'gui': '#000000' },
    \ 'light':      { 'cterm': 196,            'gui': '#000000' },
  \}
let s:Green =
  \{
    \ 'base_dark':  { 'cterm': 'darkgreen',    'gui': '#000000' },
    \ 'base_light': { 'cterm': 'green',        'gui': '#000000' },
    \ 'dark':       { 'cterm':  34,            'gui': '#000000' },
    \ 'medium':     { 'cterm':  40,            'gui': '#000000' },
    \ 'light':      { 'cterm':  46,            'gui': '#000000' },
  \}
let s:Lime =
  \{
    \ 'base_dark':  { 'cterm': '!darklime!',   'gui': '#000000' },
    \ 'base_light': { 'cterm': '!lime!',       'gui': '#000000' },
    \ 'dark':       { 'cterm': 118,            'gui': '#000000' },
    \ 'medium':     { 'cterm': 154,            'gui': '#000000' },
    \ 'light':      { 'cterm': 190,            'gui': '#000000' },
  \}
let s:Yellow =
  \{
    \ 'base_dark':  { 'cterm': 'brown',        'gui': '#000000' },
    \ 'base_light': { 'cterm': 'yellow',       'gui': '#000000' },
    \ 'dark':       { 'cterm': 214,            'gui': '#000000' },
    \ 'medium':     { 'cterm': 220,            'gui': '#000000' },
    \ 'light':      { 'cterm': 226,            'gui': '#000000' },
  \}
let s:Magenta =
  \{
    \ 'base_dark':  { 'cterm': 'darkmagenta',  'gui': '#000000' },
    \ 'base_light': { 'cterm': 'magenta',      'gui': '#000000' },
    \ 'dark':       { 'cterm': 129,            'gui': '#000000' },
    \ 'medium':     { 'cterm': 135,            'gui': '#000000' },
    \ 'light':      { 'cterm': 141,            'gui': '#000000' },
  \}
let s:Pink =
  \{
    \ 'base_dark':  { 'cterm': '!darkpink!',   'gui': '#000000' },
    \ 'base_light': { 'cterm': '!pink!',       'gui': '#000000' },
    \ 'dark':       { 'cterm': 201,            'gui': '#000000' },
    \ 'medium':     { 'cterm': 207,            'gui': '#000000' },
    \ 'light':      { 'cterm': 213,            'gui': '#000000' },
  \}
let s:Violet =
  \{
    \ 'base_dark':  { 'cterm': '!darkviolet!', 'gui': '#000000' },
    \ 'base_light': { 'cterm': '!violet!',     'gui': '#000000' },
    \ 'dark':       { 'cterm':  93,            'gui': '#000000' },
    \ 'medium':     { 'cterm':  99,            'gui': '#000000' },
    \ 'light':      { 'cterm': 105,            'gui': '#000000' },
  \}
let s:Cyan =
  \{
    \ 'base_dark':  { 'cterm': 'darkcyan',     'gui': '#000000' },
    \ 'base_light': { 'cterm': 'cyan',         'gui': '#000000' },
    \ 'dark':       { 'cterm':  39,            'gui': '#000000' },
    \ 'medium':     { 'cterm':  45,            'gui': '#000000' },
    \ 'light':      { 'cterm':  51,            'gui': '#000000' },
  \}
let s:White =
  \{
    \ 'base_dark':  { 'cterm': 'lightgray',    'gui': '#000000' },
    \ 'base_light': { 'cterm': 'white',        'gui': '#000000' },
    \ 'dark':       { 'cterm': 246,            'gui': '#000000' },
    \ 'medium':     { 'cterm': 249,            'gui': '#000000' },
    \ 'light':      { 'cterm': 254,            'gui': '#000000' },
  \}

" Define palette for one vim-mode given the main and auxiliary color
"
" This function ensures that the colors used for given vim-mode are used uniformly in all vim-modes. (Also saves a lot of typing.)
" Change this function to modify the general color-agnostic looks of the theme. Change arguments passed to this function below
" to change colors used for individual vim-modes.
"
" TODO: Provide possibility of setting `opts` (none, bold, etc.) by configuration in vim-rc file
function! GenerateVimModePalette(main, aux)
  " [guifg, guibg, ctermfg, ctermbg, opts]
  return {
    \ 'airline_a'           : [ a:aux.dark.gui,    a:main.dark.gui,   a:aux.dark.cterm,    a:main.dark.cterm,   'bold'],
    \ 'airline_b'           : [ a:aux.dark.gui,    a:main.medium.gui, a:aux.dark.cterm,    a:main.medium.cterm, 'bold'],
    \ 'airline_c'           : [ a:main.light.gui,  a:aux.medium.gui,  a:main.light.cterm,  a:aux.medium.cterm,  'bold'],
    \ 'airline_m'           : [ a:main.dark.gui,   a:aux.medium.gui,  a:main.dark.cterm,   a:aux.medium.cterm,  'none'],
    \ 'airline_x'           : [ a:aux.dark.gui,    a:main.dark.gui,   a:aux.dark.cterm,    a:main.dark.cterm,   'bold'],
    \ 'airline_y'           : [ a:aux.dark.gui,    a:main.medium.gui, a:aux.dark.cterm,    a:main.medium.cterm, 'bold'],
    \ 'airline_z'           : [ a:aux.dark.gui,    a:main.light.gui,  a:aux.dark.cterm,    a:main.light.cterm,  'bold'],
    \ 'airline_error'       : [ a:main.light.gui,  a:aux.medium.gui,  a:main.light.cterm,  a:aux.medium.cterm,  'bold'],
    \ 'airline_warning'     : [ a:main.light.gui,  a:aux.medium.gui,  a:main.light.cterm,  a:aux.medium.cterm,  'bold'],
    \ 'tabline_tab'         : [ a:main.medium.gui, a:aux.medium.gui,  a:main.medium.cterm, a:aux.medium.cterm,  'bold'],
    \ 'tabline_tabsel'      : [ a:aux.dark.gui,    a:main.medium.gui, a:aux.dark.cterm,    a:main.medium.cterm, 'bold'],
    \ 'tabline_tabmod'      : [ a:aux.dark.gui,    a:main.light.gui,  a:aux.dark.cterm,    a:main.light.cterm,  'bold'],
    \ 'tabline_tabfill'     : [ a:aux.medium.gui,  a:aux.medium.gui,  a:aux.medium.cterm,  a:aux.medium.cterm,  'bold'],
    \}
endfunction

" Normal mode
let g:airline#themes#neon#palette.normal = GenerateVimModePalette(s:Blue, s:Black)
let g:airline#themes#neon#palette.normal_modified = {
  \ 'airline_c': g:airline#themes#neon#palette.normal.airline_z,
  \ 'airline_m': g:airline#themes#neon#palette.normal.airline_z,
  \}

" Insert mode
let g:airline#themes#neon#palette.insert = GenerateVimModePalette(s:Yellow, s:Black)
let g:airline#themes#neon#palette.insert_modified = {
  \ 'airline_c': g:airline#themes#neon#palette.insert.airline_z,
  \ 'airline_m': g:airline#themes#neon#palette.insert.airline_z,
  \}

" Replace mode
let g:airline#themes#neon#palette.replace = GenerateVimModePalette(s:Green, s:Black)
let g:airline#themes#neon#palette.replace_modified = {
  \ 'airline_c': g:airline#themes#neon#palette.replace.airline_z,
  \ 'airline_m': g:airline#themes#neon#palette.replace.airline_z,
  \}

" Visual mode
let g:airline#themes#neon#palette.visual = GenerateVimModePalette(s:Violet, s:Black)
let g:airline#themes#neon#palette.visual_modified = {
  \ 'airline_c': g:airline#themes#neon#palette.visual.airline_z,
  \ 'airline_m': g:airline#themes#neon#palette.visual.airline_z,
  \}

" Command mode
let g:airline#themes#neon#palette.commandline = GenerateVimModePalette(s:Red, s:Black)
let g:airline#themes#neon#palette.commandline_modified = {
  \ 'airline_c': g:airline#themes#neon#palette.commandline.airline_z,
  \ 'airline_m': g:airline#themes#neon#palette.commandline.airline_z,
  \}

" Inactive window
let g:airline#themes#neon#palette.inactive = GenerateVimModePalette(s:White, s:Black)
let g:airline#themes#neon#palette.inactive_modified = {
  \ 'airline_c': g:airline#themes#neon#palette.inactive.airline_z,
  \ 'airline_m': g:airline#themes#neon#palette.inactive.airline_z,
  \}

" Tabline colors
let g:airline#themes#neon#palette.tabline = {}
let g:airline#themes#neon#palette.tabline.airline_tab = g:airline#themes#neon#palette.normal.tabline_tab
let g:airline#themes#neon#palette.tabline.airline_tabsel = g:airline#themes#neon#palette.normal.tabline_tabsel
let g:airline#themes#neon#palette.tabline.airline_tabmod  = g:airline#themes#neon#palette.normal.tabline_tabmod
let g:airline#themes#neon#palette.tabline.airline_tabfill = g:airline#themes#neon#palette.inactive.tabline_tabfill


" vim: ts=2 sw=2 et


