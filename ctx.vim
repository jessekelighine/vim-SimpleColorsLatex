" ~/.vim/syntax/ctx.vim

" if exists("b:current_syntax")
"   finish
" endif

syntax match TexCommand "\v\\[a-zA-Z\\]+" contains=@NoSpell
syntax match TexComment "\v\%.*" contains=@NoSpell
syntax match TexCommentIgnore "\v\\\%"
" syntax match TexParen "[{}]"
syntax match TexDollar "\$"
syntax match TexDollarIgnore "\v\\\$"
syntax match TexAnd "\v\&"
" syntax match TexSection "\v\\(sub)*section"
syntax match TexBE "\v\\begin"
syntax match TexBE "\v\\end"
syntax match TexItem "\v\\item"
syntax match TODO "\v\%\%.*"

highlight def link TexCommand String
highlight def link TexComment Comment
highlight def link TexCommentIgnore String
" highlight def link TexParen Grey
highlight def link TexDollar Grey
highlight def link TexDollarIgnore String
highlight def link TexAnd Label
" highlight def link TexSection Purple
highlight def link TexBE Repeat
highlight def link TexItem Debug
highlight def link TODO Number

let b:current_syntax = "ctx"

