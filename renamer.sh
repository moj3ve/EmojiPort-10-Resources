rm -f *.lproj/InfoPlist.strings
for f in $(find . -type f -name '*2.dat'); do rm -f "$f"; done
for f in $(find . -type f -name '*2.strings'); do rm -f "$f"; done
for f in $(find . -type f -name '*2.stringsdict'); do rm -f "$f"; done
for f in $(find . -type f -name '*2.plist'); do rm -f "$f"; done
for f in $(find . -type f -name '*.dat'); do mv "$f" "${f%.*}2.dat"; done
for f in $(find . -type f -name '*.strings'); do mv "$f" "${f%.*}2.strings"; done
for f in $(find . -type f -name '*.stringsdict'); do mv "$f" "${f%.*}2.stringsdict"; done
for f in $(find . -type f -name '*.plist'); do mv "$f" "${f%.*}2.plist"; done