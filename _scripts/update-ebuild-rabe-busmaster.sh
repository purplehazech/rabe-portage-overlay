#!/bin/sh

##
## upgrade an ebuild on the cheap
##

tree_location="net-misc/rabe-busmaster"
new_version=$(cat ../../rabe-busmaster/workspace/VERSION)

old_ebuild=$(find $tree_location -name '*.ebuild' -printf "%T@ %Tx %TX %p\n" | sort -n -r | head -1 | cut -f4 -d' ')
new_ebuild=$tree_location/$(echo $tree_location | cut -f2 -d'/')-$new_version'.ebuild'

git mv $old_ebuild $new_ebuild
git commit -m 'auto version bump'
