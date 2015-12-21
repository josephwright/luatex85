This is a temporary location for files to allow use of LuaTeX v0.85+
whilst support files in TeX Live, MiKTeX and other TeX distributions
are updated.

These files require knowledge of both the concept of a local TeX
tree and format-building. They are recommended for *experienced*
users only.

The files `ltluatex.lua` and  `luatex85.sty` should be placed in
your local `tex/latex` tree.
You will also need the various bits and pieces from
https://github.com/josephwright/tex-ini-files, and once those
are installed running

    fmtutil-sys -byengine luatex

(possibly as root/Administrator) will be needed to rebuild LuaTeX
formats.

The various `<name>-test.tex` files are LaTeX demos to check that
the code here works.

Note that `ltluatex.lua` here is also available in the development
version of LaTeX2e (http://latex-project.org/svnroot/latex2e-public/trunk/),
and is included here as very few users will have the development code
available.
