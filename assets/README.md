# Assets

## Images - img/

Screenshots, illustrations, etc. SVG preferred

## Source Code - src/

Please use separate directories for each piece of source code, include tests, and
label the source code project used using \label{<marker>} where <marker> is replaced
with the directory name. Make liberal use of cross references with these labels in
your source code files so that your context and placement may be verified.

Example source code:

Include into tex files with \inputminted{<lang>}{<path>}.

Example pseudo code:

Pseudocode should have the extension .algo.tex and be included with
\input{<path>}. This project supports pseudocode that is written
in LaTeX using the algorithmicx package.
