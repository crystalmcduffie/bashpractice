#!/bin/sh
PRICE_PER_APPLE=5
MyFirstLetters=ABC
greeting='Hello world!'

echo "The price of an apple today is: \$HK $PRICE_PER_APPLE"

echo "The first 3 letters of the alphabet are: ${MyFirstLetters}"

echo $greeting" now with spaces: $greeting"

FILELIST=`ls`
FileWithTimeStamp=/Users/crystal/Desktop/cattest_$(/bin/date +%Y-%m-%d).txt

echo ${FileWithTimeStamp}

bash ${FileWithTimeStamp}
#echo ${FILELIST}