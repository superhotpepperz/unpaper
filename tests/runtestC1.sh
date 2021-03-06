#!/bin/sh

echo "[C1] Black sheet background color."

set -e
set -x

rm -f tests/resultsC1.pbm
./unpaper -v -n --sheet-size a4 --sheet-background black ${srcdir:-.}/tests/imgsrc002.png tests/resultsC1.pbm

[ -f tests/resultsC1.pbm ]

./compare-image ${srcdir:-.}/tests/goldenC1.pbm tests/resultsC1.pbm
