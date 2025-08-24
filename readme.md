# Hapax CV

## Synopsis

This repository contains a CV (plus cover letter) template composed in LaTeX. It makes use of TikZ for the header and footer design, LaTeX 3 syntax for option parsing and LuaLaTeX for native Unicode support.

Beyond its practical necessity, the creation of this template served chiefly the author as an opportunity to renew his acquaintance with writing LaTeX packages and classes—remaining true to his office suite software aversion.[^not-perfect]

[^not-perfect] Nevertheless—and this may appear heretical (have mercy upon me!)—LaTeX is *not* the perfect instrument for the composition of CVs.

### Nomen est … nomen

A *hapax legomenon (ἅπαξ λεγόμενον)* denotes a word or term occurring only once within a given corpus of texts; compare with [this dictionary article](https://dictionary.cambridge.org/dictionary/english/hapax-legomenon).

If we believe those who claim to know how a CV ought to appear, writing a CV should aim at maximising the number of pertinent keywords for CV parsing software, subject to the restriction of retaining a human-friendly appearance.

## Installation

### Requirements

The author tested and developed the template using MacTeX 2025. Any recent TeXLive distribution ought to be capable of compiling this template.

### Setup

Navigate to a working directory of your choice, then clone the repository and enter it:

``` shell
git clone https://github.com/kvn-dtrx/hapax-cv.git &&
    cd hapax-cv
```

This is sufficient for a simple use of the template (see below). Should there be any reason to place the class within your `TEXMF` tree—for example, should you wish to employ the cover letter skeleton for other purposes—you may examine the provided `make` targets:

``` shell
make help
```

These afford options to copy or symlink into the user's `TEXMF` tree and also to remove it.

### Usage

For instance, the user may navigate to the directory `example/` and adapt the Kantian instantiation to his own requirements.

As this subdirectory already provides a `.latexmkrc` file, the command `latexmk` is sufficient for compilation.

## Colophon

**Author:** [kvn-dtrx](https://github.com/kvn-dtrx)

**License:** [MIT License](license.txt)
