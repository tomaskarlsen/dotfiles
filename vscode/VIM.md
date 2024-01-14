# VScode VIM shortcuts
leader + d (dd) - Remove line and copy it
C + n (:nohl) - Remove highlighted text
K - Linebreak
leader + w - File save
leader + leader - Quicksearch files
C + h/j/k/l - Move between splits
gc - toggle line comment
gC - toggle block comment
gd - jump to definition.
gq - on a visual selection reflow and wordwrap blocks of text, preserving commenting style. Great for formatting documentation comments.
gb - adds another cursor on the next word it finds which is the same as the word under the cursor.
af - visual mode command which selects increasingly large blocks of text. For example, if you had "blah (foo [bar 'ba|z'])" then it would select 'baz' first. If you pressed af again, it'd then select [bar 'baz'], and if you did it a third time it would select "(foo [bar 'baz'])".
gh - equivalent to hovering your mouse over wherever the cursor is. Handy for seeing types and error messages without reaching for the mouse!

### Vim surround
y s <motion> <desired>	Add desired surround around text defined by <motion>
d s <existing>	Delete existing surround
c s <existing> <desired>	Change existing surround to desired
S <desired>	Surround when in visual 

### Vim easymotion
<leader><leader> s <char>	Search character
<leader><leader> f <char>	Find character forwards
<leader><leader> F <char>	Find character backwards
<leader><leader> t <char>	Til character forwards
<leader><leader> T <char>	Til character backwards
<leader><leader> w	Start of word forwards
<leader><leader> b	Start of word backwards
<leader><leader> l	Matches beginning & ending of word, camelCase, after _, and after # forwards
<leader><leader> h	Matches beginning & ending of word, camelCase, after _, and after # backwards
<leader><leader> e	End of word forwards
<leader><leader> ge	End of word backwards
<leader><leader> j	Start of line forwards
<leader><leader> k	Start of line backwards
<leader><leader> / <char>... <CR>	Search n-character
<leader><leader><leader> bdt	Til character
<leader><leader><leader> bdw	Start of word
<leader><leader><leader> bde	End of word
<leader><leader><leader> bdjk	Start of line
<leader><leader><leader> j	JumpToAnywhere motion; default behavior matches beginning & ending of word, camelCase, after _ and after #

### Vim surround
y s <motion> <desired>	Add desired surround around text defined by <motion>
d s <existing>	Delete existing surround
c s <existing> <desired>	Change existing surround to desired
S <desired>	Surround when in visual modes (surrounds full selection)

### Tips
ctrl+u to move half page up
ctrl-d to move half page down
viw to select the word
va{ select everything inside including the {}
vi{ select everyting inside not including {}

using w, e, b to jump from word to word
ciw to delete word and switch into insert mode
cit to delete everything between tags and switch into insert mode
ci" or ci' to delete everything inbetween quotes and switch into insert mode
making a change then n to jump to next encounter, then . to repeat change
2dd to delete 2 lines, 3dd delete 3 lines, 3dd….
2j/2k jump down/up 2 lines, 10j/10k to jump down/up 10 lines, etc
ctrl + v for visual block mode, v visual mode, V visual line mode
o or O for new line, A insert at end of line, I insert at beginning
/pattern searches for similar pattern, n to repeat search, N repeat search opposite direction