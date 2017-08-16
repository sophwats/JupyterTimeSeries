#!/bin/bash
currentfile="01"
echo $currentfile
ECHO $currentfile.bz2
curl -O "https://dumps.wikimedia.org/other/pagecounts-ez/merged/2017/2017-01/pagecounts-2017-01-$currentfile.bz2"
bzip2 -d pagecounts-2017-01-$currentfile.bz2
ECHO unzipped
awk '/en.z Barack_Obama /' pagecounts-2017-01-$currentfile > barackobama
