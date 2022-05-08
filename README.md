LaTeX Chicago-Style Essay Template with Footnotes
=================================================

A LaTeX template for student papers in the Chicago footnote style. Uses GNU Make
to build with `pdflatex` and spell check with `aspell`. Set up to use BibLaTeX
for citation.


Dependencies
------------

### CTAN Links

 - [`inputenc`](https://www.ctan.org/pkg/inputenc)
 - [`geometry`](https://www.ctan.org/pkg/geometry)
 - [`times`](https://www.ctan.org/pkg/times)
 - [`indentfirst`](https://www.ctan.org/pkg/indentfirst)
 - [`biblatex-chicago`](https://www.ctan.org/pkg/biblatex-chicago)
 - [`csquotes`](https://www.ctan.org/pkg/csquotes)
 - [`babel`](https://www.ctan.org/pkg/babel)
 - [`xcolor`](https://www.ctan.org/pkg/xcolor)


Targets
-------

| Command      | Function                                            |
| ------------ | --------------------------------------------------- |
| `make all`   | Create a PDF called `output.pdf`                    |
| `make clean` | Delete the output PDF and any temporary build files |
| `make check` | Run a spell check using `aspell`                    |
