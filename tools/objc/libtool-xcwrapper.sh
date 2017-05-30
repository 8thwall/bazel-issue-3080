#!/bin/bash --norc

/usr/bin/xcrun libtool "$@" 2> >(sed -e "/has no symbols/D" | sed -e "/due to use of basename, truncation and blank padding/D" | sed -e "/the table of contents is empty/D" | sed -e "/warning same member name/D")

