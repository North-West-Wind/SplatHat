#!/usr/bin/env sh

# clean up
rm -r build
mkdir build

zip -j build/splathat.zip \
	README.md icon.png manifest.json \
	cosmetics/*.cosmetics