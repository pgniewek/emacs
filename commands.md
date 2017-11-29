# My personal emacs cheat sheet

## General remarks

C = Ctrl (Capital "C" is reserved for the Ctrl key)

M = Alt  (Capital "M" is reserved for the Alt  key)

C-x C-s = Hold Ctrl key and press "c" key, release "c" (while holding Ctrl), and press "s".

RET = Press the Enter key

## Basic commands

C-x C-c = Quit emacs

C-x C-f = Open a file

C-x C-s = Save the current buffer to a file

C-x o   = Toggle active frames in emacs window

C-x C-b = Display the list of active buffers

## LaTeX-related commands (in a buffer associated with a *.text file)

C-c C-c = If it's the first time since the file was saved, then invoke 'pdflatex'. If it's the second time, then view the file with 'docview'.

## Invoking more complicated commands

After M-x you can type a command, for instance:

M-x package-install RET markdown-mode RET = installs the package 'markdown-mode' for Markdown syntax coloring.

## Misc.

You don't have to be afraid of editing '.emacs' in vi -- I've tried that and it doesn't cause any overflows in the Big Computer In The Sky. 