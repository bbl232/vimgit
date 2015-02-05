# Installation
To install this vim config package use make.

`cd vimgit && make`

# Features
This config package includes plugins by other developers including pathogen, NERDTree, ctrlp, and vim-multiple-cursors. It also sets up some nice control features.

In normal mode...
* TAB will toggle the file tree pane.
* Ctrl-t will open a new tab.
* Ctrl-x will close the current tab or pane.
* Ctrl-h will move left a pane.
* Ctrl-l will move right a pane.
* Ctrl-j will move down a pane.
* Ctrl-k will move up a pane.
* Ctrl-b will allow for quick buffer switching.
* f will advance the cursor one word (b to move back a word).
* :O <file> will open a file in a new tab (supports autocomplete).
* :Q will close all open buffers (if they are not modified).
* Syntax highlighting is turned on by default.
* Line numbers are turned on by default.

# About the plugins
* vim-multiple cursors allows you to edit multiple things at once, Ctrl-n to select the next instance of the word under the cursor, c to change all instances once selected.
* NERDTree powerful file tree.
* ctrlp use Ctrl-p to search for a filename in the CWD.
