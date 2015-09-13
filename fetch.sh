#!/bin/sh

#
# Fetch the latest color palette from http://tango.freedesktop.org.
#

set -eu

root='http://tango.freedesktop.org/static/cvs/tango-art-tools'

wget -O README.orig "$root/README"

wget --limit-rate=20K \
     --timestamping \
     --page-requisites \
     --convert-links \
     --adjust-extension \
     --reject='html' \
     --no-host-directories \
     --cut-dirs=3 \
     "$root/AUTHORS" \
     "$root/COPYING" \
     "$root/ChangeLog" \
     "$root/palettes/Tango-Palette.gpl" \
     "$root/palettes/Tango-Palette.png" \
     "$root/palettes/Tango-Palette.svg
