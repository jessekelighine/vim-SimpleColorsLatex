" ~/.vim/syntax/tex.vim

if exists("b:current_syntax")
  finish
endif

syntax match TexCommand   "\\\{1,2}"
syntax match TexCommand   "\\[a-zA-Z]\+"         contains=@NoSpell
syntax match TexAnd       "&"
syntax match TexBeginEnd  "\\\(begin\|end\)"
syntax match TexItem      "\\item"
syntax match TexSubTag    "\\tag"
syntax match TexSubLabRef "\\\(label\|ref\|pageref\)" contains=@NoSpell
syntax match TexSubLR     "\\\(left\|right\|big\|Big\|middle\)"
syntax match TexSubFoot   "\\footnote"
" syntax match TexSubSect   "\\\(sub\)*section"
syntax match TexCommand   "\\footnote[a-zA-Z]\+" contains=@NoSpell
syntax match TexCommand   "\\\(bigcup\|bigcap\)" contains=@NoSpell
syntax match TexCommand   "\\\(rightarrow\|leftarrow\)" contains=@NoSpell
syntax match TexComment   "%.*$"                 contains=@NoSpell
syntax match TexTodo      "%%.*"
syntax match TexIgnore    "\\\(%\|{\|}\|\$\|#\|&\|!\|\^\|,\|;\)"
syntax region TexMaths     matchgroup=TexDollar   start="\$" end="\$"
	\ contains=@NoSpell,TexCommand,TexIgnore,TexSubLR

" syntax match TIKZA "\s\(node\|coordinate\|rectangle\|grid\|circle\|pic\|arc\|to\|plot\)"
" syntax match TIKZA "\s\(--\||-\|-|\|\.\.\)"
" syntax match TIKZB "\s\(child\|at\|controls\)"
" syntax match TIKZB "intersection"
" syntax match TIKZB "\((\$\|\$)\)"
" syntax match TIKZC "label"
" syntax match TIKZC "\s\(let\|in\)"
" syntax match TIKZC "!"

" syntax match BeamerFrame "frame"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

highlight def link TexCommand   Green
highlight def link TexComment   Comment
highlight def link TexDollar    Grey
highlight def link TexAnd       Orange
highlight def link TexBeginEnd  Red
highlight def link TexItem      Yellow
highlight def link TexSubTag    Yellow
highlight def link TexSubFoot   Orange
highlight def link TexSubLabRef Orange
" highlight def link TexSubSect   Green
highlight          TexSubLR     ctermfg=DarkGray guifg=DarkGray
highlight def link TexTodo      Todo
highlight def link TexIgnore    Yellow

" highlight def link TIKZA         Orange
" highlight def link TIKZB         Yellow
" highlight def link TIKZC         Blue

" highlight def link BeamerFrame   Blue

let b:current_syntax = "tex"
