rm -r *.bz2
dpkg-scanpackages -m . /dev/null >Packages && bzip2 Packages
bzip2 Packages
