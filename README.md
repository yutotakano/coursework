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
  Veggies es bonus vobis, proinde vos postulo essum magis kohlrabi welsh onion daikon amaranth tatsoi tomatillo melon azuki bean garlic.
  
  Gumbo beet greens corn soko endive gumbo gourd. Parsley shallot courgette tatsoi pea sprouts fava bean collard greens dandelion okra wakame tomato. Dandelion cucumber earthnut pea peanut soko zucchini.

  \begin{Proof}{The law of vegetables}
    Lovely.
  \end{Proof}
\end{document}
```

The output is available for you to look at in the examples directory.
