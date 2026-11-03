# Aaron Webster's Resume

LaTeX source for the resume published at <https://falsecolour.com/aw>.

## Building

Requires TeX Live with `latexmk`, `biber`, and `biblatex`.

    make          # builds webster-resume.pdf
    make clean    # removes build products

`bibliography.bib` holds the publications and patents cited with `\fullcite`.
`webster-resume.cls` is a lightly modified copy of Michael DeCorte's 1989
`resume` style; the `.tex` file re-enables auxiliary files and hangs section
titles in the margin itself.
