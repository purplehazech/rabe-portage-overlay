#!/bin/sh

# some stuff that portaage will need to not bork
export DISTDIR=/tmp/distdir/ 
mkdir -p $DISTDIR

# rebuild everything :) i should start failing on this sonnish
find . -name *.ebuild -exec ebuild {} digest \;

# pack what clients need
tar --exclude=README --exclude=repositories.xml --exclude=_scripts/ -cjf overlay.tar.bz2 ./
