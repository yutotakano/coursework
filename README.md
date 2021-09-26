# Coursework

A personal document class for TeX (specifically, XeLaTeX) for organising coursework.

## Installation

You will need the `libertinus-fonts` TeX package installed from CTAN, or the equivalent .otf fonts directly unpacked into the same path as the .cls file (from [here](https://github.com/alerque/libertinus/release)).

You will also need the Jost* Book weight .otf file, which needs to be installed system-wide, or at least placed a location where all .tex can see. It is included in this repo for convenience, together with the required SIL license text. Double clicking and installing should be enough for most systems.

## Usage

Follow the procedure explained [here](https://tex.stackexchange.com/a/1167) for placing the `coursework.cls` file into the appropriate folder, and rebuilding the TeX database.

Then, it is available to all TeX files you create from now on in the following simple format:

```latex
\documentclass{coursework}

\session{YUTO1A Lecture 1}
\title{Your First Coursework}

\begin{document}
  Lorem ipsum...
  [...]
\end{document}
```

The output is available for you to look at in the examples directory.
