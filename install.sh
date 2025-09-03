#!/bin/sh

# This script copies two layouts to corresponding folder

echo "
________________________________________________________________________________
"

# Just in case this folder does not exist
mkdir -p "$HOME/.config/xkb/symbols"

# Comment this out if you don't want qwerty variant
if cp ./qwerty-seine "$HOME/.config/xkb/symbols/qwerty-seine"; then
	echo "QWERTY variant installed"
fi

# Comment this out if you don't want dvorak variant
if cp ./dvorak-seine "$HOME/.config/xkb/symbols/dvorak-seine"; then
	echo "Dvorak variant installed"
fi


echo "
________________________________________________________________________________
Layout(s) installed now don't forget to
sudoedit /usr/share/X11/xkb/rules/evdev.xml


<variant>
  <configItem>
    <name>qwerty-seine</name>
    <description>English (Seine QWERTY)</description>
  </configItem>
</variant>


if qwerty is installed, and


<variant>
  <configItem>
    <name>dvorak-seine</name>
    <description>English (Seine Dvorak)</description>
  </configItem>
</variant>


if dvorak is installed.
________________________________________________________________________________
"
