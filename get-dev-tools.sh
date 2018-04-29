#!/bin/bash
mkdir tmp_installers -p
cd tmp_installers

# firefox
curl -L -o firefox.dmg 'https://download.mozilla.org/?product=firefox-latest-ssl&os=osx&lang=en-US'
sleep 1
hdiutil mount -nobrowse firefox.dmg
cp -R "/Volumes/Firefox/Firefox.app" /Applications
hdiutil unmount "/Volumes/Firefox"
rm firefox.dmg

# sublime
curl -L -o sublime3.dmg 'https://download.sublimetext.com/Sublime%20Text%20Build%203143.dmg'
sleep 1
hdiutil mount -nobrowse sublime3.dmg
cp -R "/Volumes/Sublime Text/Sublime Text.app" /Applications
hdiutil unmount "/Volumes/Sublime Text"
rm sublime3.dmg

# shiftit
curl -L -o shiftit.zip 'https://github.com/fikovnik/ShiftIt/releases/download/version-1.6.6/ShiftIt-1.6.6.zip'
sleep 1
unzip shiftit.zip
mv ShiftIt.app /Applications
rm shiftit.zip

# flycut
curl -L -o flycut.zip 'https://github.com/TermiT/Flycut/releases/download/1.8.2/Flycut.app.1.8.2.zip'
sleep 1
unzip flycut.zip
mv Flycut.app /Applications
rm flycut.zip

# intelliJ
curl -L -o ij.dmg 'https://download.jetbrains.com/idea/ideaIU-2018.1.2.dmg'
sleep 1
hdiutil mount -nobrowse ij.dmg
cp -R "/Volumes/IntelliJ IDEA/IntelliJ IDEA.app" /Applications
hdiutil unmount "/Volumes/IntelliJ IDEA"
rm ij.dmg

# cleanup
cd ../
rm -rf tmp_installers

# x-code cli tools
xcode-select --install
