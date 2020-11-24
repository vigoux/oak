# `oak`, a calming vim colorscheme

![Screenshot](https://i.imgur.com/iylXuX2.png)

Hey there, this is `oak` a brown-ish, high-contrast-ish colorscheme I made for myself.

It is pretty early stage, and I might both not use it in the end, or drastically change it.

#### LSP virtual text background
Set `g:oak_virtualtext_bg` to `1` before loading the colorscheme to have a prominent background for warning and error messages

# Inspiration and goals

I was a heavy dracula user before making this theme, so the high-contrast feel of dracula was
actually what I was aiming for.

But, after digging a bit for themes, I found that brown themes are actually pretty nice too and
wanted to try them out. But non of them was as high contrast as I liked, thus `oak`.

On of the goals will be to have that compatible with both tree-sitter and nvim lsp implementation.

# Acknowledgement

Thanks @clason for the help building this, the original code in `colors/oak.vim` is taken from his
gists.

# Versioning

`oak` versions are simple to follow : any change to the color codes will lead to a new version.
For example between v0.19 and v0.20, a tiny change was made on the second darkest brown (`trunk2` in
our convention), thus creating a new version.

This convention is made in order for people to, if they don't agree with one color change, stay with
this version of the palette.
