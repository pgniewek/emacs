# My personal emacs cheat sheet

## General remarks

C = Ctrl (Capital "C" is reserved for the Ctrl key)

M = Alt  (Capital "M" is reserved for the Alt  key)

C-x C-s = Hold Ctrl key and press "x" key, release "x" (while holding Ctrl), and press "s".

RET = Press the Enter key

## Basic commands

C-g     = Abort command input (use to recover from mistakes in commands)

C-x C-c = Quit emacs

C-x C-f = Open a file

C-x C-s = Save the current buffer to a file

C-x C-b = Display the list of active buffers

C-x k   = Kill a buffer

C-x [rightarrow] or C-x [leftarrow] = Cycle through open buffers 

## Copy and paste

| Code | emacs name     | conventional name    |
|------|----------------|----------------------|
| C-w  | kill           | cut (usual Ctrl+x)   |
| M-w  | kill-ring-save | copy (usual Ctrl+c)  |
| C-y  | yank           | paste (usual Ctrl+v) |
| M-y  | yank next      |           -          |

## Moving in text; selecting text = similar (almost identical) to other modern editors

Hold [CTRL] and press right-/leftarrow = Move coursor over whole words

Hold [CTRL] and press up-/down-arrow = Move coursor over whole paragraphs

Hold [SHIFT] and press right-/left-/up-/down-arrow = Select consecutive characters. Can be combined with [CTRL] to select whole words/paragraphs. 

[HOME] = Jump to the beginning of the active line

[END] = Jump to the end of the active line

[CTRL] + [HOME] = Jump to the begining of the file

[CTRL] + [END] = Jump to the end of the file

## Frames 

C-x o ('oh' character) = Toggle active frames in emacs window

C-x 0 (zero character) = Close frame

C-x 1 = Maximize frame

C-x 2 = Split (duplicate) frame horizontally 

C-x 3 = Split (duplicate) frame vertically 

## Coding-related

M-; = comment-dwim (Do What I Mean) = comment or uncomment a selection

C-x h = Select whole buffer

C-x h [TAB] = format source code (add indentations, etc.)

[TAB] = format selected text (as above, but applied only to a selection)

## LaTeX-related commands (in a buffer associated with a *.tex file)

C-c C-c = If it's the first time since the file was saved, then invoke `pdflatex`. If it's the second time, then view the file with `docview`.

## Invoking more complicated commands

After M-x you can type a command, for instance:

M-x package-install RET markdown-mode RET = installs the package `markdown-mode` for Markdown syntax coloring.

## The Interactive Emacs Lisp Mode

M-x ielm = Start an interactive elisp session, analogus to a shell session in a terminal, or an interactive session in a Python interpreter.

## Misc.

You don't have to be afraid of editing `.emacs` in `vi` -- I've tried that and it doesn't cause any overflows in the Big Computer In The Sky. 
