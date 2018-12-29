#!/bin/bash
# copyright by fiete
# written at 35c3

# this script creates a tmpdir
#
# then it changes there and uses asciidoctor to create docbook files from the original asciidoc documentation
# in the end the docbook files are converted to rst using pandoc. Last the tmpdir is removed

# requires asciidoctor and pandoc being installed and in the path

# takes the files to convert as argument

# go to doc/ directory in qutebrowser checkout and
# run: $ ../scripts/dev/convert_doc.sh *.asciidoc help/*.asciidoc ../README.asciidoc

tmpdir=$(mktemp -d)

asciidoctor -b docbook5 -D "$tmpdir" "$@"
for f in "$tmpdir"/*.xml; do
    pandoc -f docbook -t rst --standalone -o "${f/.xml/}".rst "$f"
done

cp "$tmpdir"/*.rst .
rm -r "$tmpdir"
