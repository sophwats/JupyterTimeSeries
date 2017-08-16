#!/bin/bash
for i in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
do
  echo $i
  currentfile=$i
  echo $currentfile
  ECHO $currentfile.bz2
  curl -O "https://dumps.wikimedia.org/other/pagecounts-ez/merged/2017/2017-02/pagecounts-2017-02-$currentfile.bz2"
  bzip2 -d pagecounts-2017-02-$currentfile.bz2
  ECHO unzipped
  awk '/en.z Barack_Obama /' pagecounts-2017-02-$currentfile >> barackobama
  rm pagecounts-2017-02-$currentfile
  echo completednow
done
