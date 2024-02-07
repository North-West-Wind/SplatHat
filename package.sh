#!/usr/bin/env sh

# clean up
rm -r build
mkdir build

zip -j build/splathat.zip \
	README.md icon.png manifest.json \
	cosmetics/*.cosmetics
mkdir -p build/BepInEx/plugins
cp -r moresuits build/BepInEx/plugins/
(
	cd build
	zip -ur splathat.zip BepInEx -i \*\*/\*.png
)