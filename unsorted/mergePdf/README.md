# mergePdf
Example how to combine multiple PDF files into one



## The need

If you have PDF documents you want to merge, Ghostscript is a straightforward solution. That, however, does not keep the hyperlinks. Advanced PDF editing software are often non-free and cannot automate the merging process.



## The solution

Based on https://tex.stackexchange.com/a/44104/119426, the *pax* LaTeX package is used. An MWE is provided in this directory. To compile it, run the `run.sh` script.