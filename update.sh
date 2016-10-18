if [[ ! -f Packages.bz2 ]];
then
	dpkg-scanpackages -m . /dev/null >Packages
	bzip2 Packages
else
	rm -r *.bz2
	dpkg-scanpackages -m . /dev/null >Packages && bzip2 Packages
fi
