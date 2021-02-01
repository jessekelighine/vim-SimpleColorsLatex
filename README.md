# A Simpler LaTeX Syntax Highlighting for Vim

Since most LaTeX syntax highlight in Vim are way too complicated (causing Vim
to be extreme slow on large TeX files) and unnecessarily colourful, I created
my own LaTeX syntax highlight file with the aim of being _simple_ and _readable_.

Here is a sample screen shot. 

![sample shot](sample.png)

## Features

* all commands except `begin`, `end`, and `item` are in green
* `begin` and `end` are in red
* `item` is in yellow
* `%%` type comments are in purple
* `$` are in grey
* `&` are in orange

Notice the colours depends on your colour theme.
I use [miramare](https://github.com/franbach/miramare).
You can use `:help group` to check for the highlighting group and change 
the colours on your own.

## How to use as `ctx`?

Simple put the `ctx.vim` file into `/.vim/syntax/` directory and you are good
to go.  However, notice that special filetype `ctx` since I don't want to mess
with `tex` filetype too much and I dislike the auto-indent in `tex` files.
Thus, I have this line in my `.vimrc`
```{vi}
autocmd BufNewFile,BufRead *.ctx,*.tex setl filetype=ctx
```
and added a file at `~/.vim/filetype.vim` which reads
```{vi}
augroup filetypedetect
	au! BufRead,BufNewFile *.ctx		setfiletype ctx
augroup END
```
just to supply this new `ctx` filetype.

## How to use as `tex`?

If you wish to use `tex` filetype, simply change the file name `ctx.vim` to
`tex.vim` and change the last line in `ctx.vim` to
```{vi}
let b:current_syntax = "tex"
```
then you are good to go.
