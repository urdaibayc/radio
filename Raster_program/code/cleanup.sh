cd ~/Desktop/Behar/Cartes\ individuelles/
rename 's/Cartes individuelles \- //' *
rename 's/Cartes Individuelles \- //' *
find Burkina/ -mindepth 2 -type f -exec mv -t Burkina/ --backup=t '{}' +
find Cameroon/ -mindepth 2 -type f -exec mv -t Cameroon/ --backup=t '{}' +
find Chad/ -mindepth 2 -type f -exec mv -t Chad/ --backup=t '{}' +
find Niger/ -mindepth 2 -type f -exec mv -t Niger/ --backup=t '{}' +
cd Burkina
find -mindepth 1 -maxdepth 1 -type d -exec rm -r {} \;
find . -type f -name '*.geo' -delete
find . -type f -name '*.dat' -delete
find . -type f -name '*.inf' -delete
rename 's/^/Burkina /' *
rename 's/ /_/g' *
cd ../Cameroon
find -mindepth 1 -maxdepth 1 -type d -exec rm -r {} \;
find . -type f -name '*.geo' -delete
find . -type f -name '*.dat' -delete
find . -type f -name '*.inf' -delete
rename 's/^/Cameroon /' *
rename 's/ /_/g' *
cd ../Chad
find -mindepth 1 -maxdepth 1 -type d -exec rm -r {} \;
find . -type f -name '*.geo' -delete
find . -type f -name '*.dat' -delete
find . -type f -name '*.inf' -delete
rename 's/^/Chad /' *
rename 's/ /_/g' *
cd ../Niger
find -mindepth 1 -maxdepth 1 -type d -exec rm -r {} \;
find . -type f -name '*.geo' -delete
find . -type f -name '*.dat' -delete
find . -type f -name '*.inf' -delete
rename 's/^/Niger /' *
rename 's/ /_/g' *
cd ../..
find Cartes\ individuelles/ -mindepth 2 -type f -exec mv -t Cartes\ individuelles/ --backup=t '{}' +
cd Cartes\ individuelles/
find -mindepth 1 -maxdepth 1 -type d -exec rm -r {} \;
ls -v *.tiff| cat -n | while read n f; do mv -n "$f" "$n $f"; done 
ls -v *.kml| cat -n | while read n f; do mv -n "$f" "$n $f"; done 
rename 's/ /_/g' *
