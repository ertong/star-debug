#!/bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )"
cd $DIR

mkdir -p ../star.debug/assets/images/devices
rm -rf ../star.debug/assets/images/devices/*
cp Space-Debugger/resources/devices/* ../star.debug/assets/images/devices

mkdir -p ../star.debug/assets/gettext
rm -rf ../star.debug/assets/gettext/*
cd $DIR/Space-Debugger/locales
#LANGS=''
for lang in *; do
	cp $DIR/Space-Debugger/locales/$lang/LC_MESSAGES/space-debugger.mo $DIR/../star.debug/assets/gettext/space-debugger.$lang.mo
#	LANGS="\"$lang\", $LANGS"
done
#sed -i "s/.*List<String> langs.*/  List<String> langs = [$LANGS];/" $DIR/../star.debug/lib/gettext/space_text.dart
