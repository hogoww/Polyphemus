#!/bin/sh

#I'm a script that downloads a Pharo image for a given pharo version
#I expect a number as argument.
#At the time of writting, I support pharo 9, 10,  11
#Possible improvement would be to add the 32/64 bit arg



#different versions of Pharo have different names
imageName=""
if [ $(($1)) -eq 9 ]; then
    imageName="pharoImage64.zip"
fi

if [ $(($1)) -eq 10 ]; then
    imageName="pharo64.zip"
fi

if [ $(($1)) -eq 11 ]; then
    imageName="pharoImage-x86_64.zip"
fi

pharoVersion=$(($(($1))*10))
if [ -z $imageName ]; then
    echo "pharo version unsupported"
    exit
fi



wget "http://files.pharo.org/get-files/$pharoVersion/$imageName"
unzip "$imageName"
rm *.sources "$imageName" pharo.version *.changes
newName="cleanP${1}.image"
mv *.image $newName
mv $newName ../resources/
