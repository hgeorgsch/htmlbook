# HTMLBOOK

## What is it?

HTMLBOOK is a template to create web pages from LaTeX sources, with the
table of contents as a left hand menu.  Documents are compiled with TeX4ht.

## Does it work?

It is highly experimental, but it works for me.  

Bug reports and tips to make it more robust are welcome.

## Installation:

### The TeX4ht config:

The toc.cfg file must be availble to the tex4ht compiler.  The easiest
is probably to copy it into the working directory of your document.

### TeX and TeX4ht Styles:

The styles4ht directory must be placed in the texmf search path,
one way or another. The easiest is probably to include it in the
TEXINPUTS environment variable.

### CSS styles:

The css/htmlbook.css file must be installed with with the compiled
HTML code.

The css/htmlbook.css file can be recreated using the Makefile in the
directory. It is the concatenation of other files covering different
functional categories.  There is also a script to generate the styles
for theorem-like environments.  These are not documented; read the
source.

## Preparing a document:

The sample directory includes a TeX-file and a Makefile to demonstrate
the use of the template.

Although tex4ht can convert graphics automatically, the result is better
if graphics file is converted to web compatible format (PNG, JPEG, or SVG)
in addition to bounding box information for the latex compiler.
For instance, PDF vector graphics should be converted to SVG (e.g.\ by
inskape) and have bonding box definition (.xbb file) generated as shown
in the Makefile.  The template is set up to handle these two files
correctly.

## Features:

The left hand navigation menu works out of the box.

Theorem-like environments are typeset as boxes, provided that the
appropriate CSS styles have been defined.  Existing theorem-style
environments are defined in styles4ht/thmbox.sty, and the script in the
css directory can generate corresponding styles.

## Feedback:
**Developer:** Hans Georg Schaathun: <georg+tex@schaathun.net>

## Acknowledgements:

The template is based on an example by Daniel Becker.
