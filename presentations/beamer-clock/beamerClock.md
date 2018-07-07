
# beamer-clock

A beamer command displaying the slides advancements in the form of a minimalistic clock: ![](clockCount.gif)

This command takes advantage of the fact that beamer page counters can be used to compute fractions in a `tikz` environment.



```latex
% Include somewhere in your preamble
\newcommand{\myBeamerClock}[2]{
    % #1 is the radius of the clock
    % #2 is the vertical shift for inline placement
    \tikz[baseline=#2]{
        \filldraw (0,0) -- (0,#1) arc (90:(90-\insertframenumber/(\inserttotalframenumber)*360):#1);
        \draw (0,0) circle (#1);
    }
}
```
- By default, the center of the clock will be aligned on the text baseline which may look unbalanced. The second argument allows you to fix this the way you want.
- You might need to call `\usepackage{appendixnumberbeamer}`
so that the total frame number stops at `\appendix`.

You can then use it, as an example, in your footer next to the frame number (see gif above) or in section title pages:

```tex
% Example of use
\AtBeginSection[]{
  \begin{frame}
    \centering\usebeamerfont{section page}
    section \insertsectionnumber{}
    \myBeamerClock{1ex}{-1ex}
    \insertsection
  \end{frame}
}
```
- Colors always adapt to your beamer theme `fg` and `bg` settings.
