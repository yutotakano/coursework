# Coursework

A personal document class for TeX (specifically, XeLaTeX) for organising coursework.

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
