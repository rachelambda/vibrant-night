" Clear existing themes
highlight clear
if exists("syntax_on")
	syntax reset
endif

" Data
set background=dark
let g:colors_name="vibrant-night"

" Remove these when you're happy with teh scheme
let s:dblack  = "0"
let s:dred    = "1"
let s:dgreen  = "2"
let s:dyellow = "3"
let s:dblue   = "4"
let s:dpurple = "5"
let s:dcyan   = "6"
let s:dwhite  = "7"

let s:bblack  = "8"
let s:bred    = "9"
let s:bgreen  = "10"
let s:byellow = "11"
let s:bblue   = "12"
let s:bpurple = "13"
let s:bcyan   = "14"
let s:bwhite  = "15"

" names are reversed cause me and vim disagree on what fg and bg is
function! s:hi(group, ctermfg, ctermbg)
  if a:ctermfg != "none"
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != "none"
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
endfunction

call s:hi("Error", s:bwhite, s:dred)
call s:hi("Cursor", "none", s:bwhite)
call s:hi("CursorLine", "none", s:bblack)
hi CursorLine term=none cterm=none
call s:hi("LineNr", s:bblack, "none")
call s:hi("MatchParen", s:bred, s:bblack)
call s:hi("NonText", s:dred, "none")
call s:hi("PMenu", s:bwhite, s:dblack)
call s:hi("PmenuSbar", "none", s:dblack)
call s:hi("PMenuSel", s:bcyan, s:bblack)
call s:hi("PmenuThumb", "none", s:bblack)
call s:hi("Error", s:bwhite, s:dred)
call s:hi("SpellBad", s:dred, "none")
hi SpellBad term=reverse cterm=underline
call s:hi("SpellCap", s:dyellow, "none")
hi SpellCap term=reverse cterm=underline
call s:hi("SpellLocal", s:dgreen, "none")
hi SpellLocal term=reverse cterm=underline
call s:hi("SpellRare", s:dred, "none")
hi SpellRare term=reverse cterm=underline
call s:hi("Visual", s:bwhite, s:bblack)
call s:hi("VisualNOS", s:bwhite, s:bblack)
call s:hi("Folded", s:dpurple, s:bblack)
call s:hi("FoldColumn", s:dpurple, s:bblack)
call s:hi("Directory", s:dpurple, "none")
call s:hi("ErrorMsg", s:bwhite, s:dred)
call s:hi("ModeMsg", s:bwhite, "none")
call s:hi("MoreMsg", s:bwhite, "none")
call s:hi("Question", s:bwhite, "none")
call s:hi("Statusline", s:bblack, s:dpurple)
call s:hi("StatuslineNC", s:bblack, s:bwhite)
call s:hi("StatuslineTerm", s:bblack, s:dpurple)
call s:hi("StatuslineTermNC", s:bblack, s:bwhite)
call s:hi("WarningMsg", s:dblack, s:dyellow)
call s:hi("WildMenu", s:dblack, s:bwhite)
call s:hi("Search", s:bcyan, s:bblack)
call s:hi("IncSearch", s:bcyan, s:bblack)
call s:hi("Tabline", s:bwhite, s:bblack)
call s:hi("TablineFill", s:bwhite, s:dblack)
call s:hi("TablineSel", s:bcyan, s:bblack)
call s:hi("VertSplit", s:bblack, s:dblack)
hi VertSplit term=none cterm=none gui=none

" Langs
call s:hi("Boolean", s:dblue, "none")
call s:hi("Character", s:dgreen, "none")
call s:hi("Comment", s:bblack, "none")
call s:hi("Conditional", s:dpurple, "none")
call s:hi("Constant", s:bwhite, "none")
call s:hi("Delimiter", s:bblue, "none")
call s:hi("Exception", s:dred, "none")
call s:hi("Float", s:dblue, "none")
call s:hi("Function", s:dpurple, "none")
call s:hi("Identifier", s:bwhite, "none")
call s:hi("Include", s:dpurple, "none")
call s:hi("Keyword", s:dpurple, "none")
call s:hi("Label", s:dpurple, "none")
call s:hi("Number", s:dblue, "none")
call s:hi("Operator", s:dpurple, "none")
call s:hi("PreProc", s:dpurple, "none")
call s:hi("Define", s:dpurple, "none")
call s:hi("Repeat", s:dpurple, "none")
call s:hi("Special", s:bwhite, "none")
call s:hi("SpecialChar", s:dyellow, "none")
call s:hi("SpecialComment", s:bblack, s:bgreen)
call s:hi("Statement", s:dpurple, "none")
call s:hi("StorageClass", s:dcyan, "none")
call s:hi("String", s:dgreen, "none")
call s:hi("Structure", s:dpurple, "none")
call s:hi("Tag", s:bwhite, "none")
call s:hi("Todo", s:bwhite, s:dred)
hi Todo term=underline cterm=underline
call s:hi("Type", s:dcyan, "none")
call s:hi("Typedef", s:dred, "none")
