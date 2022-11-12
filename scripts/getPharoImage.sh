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

#Expects three argument, the image version, the prefix and an image name
extractAndName (){
    unzip "$3"
    rm "$3" pharo.version *.changes
    newName="${2}P${1}"
    mv *.image "${newName}.image"
    mv *.sources "${newName}.sources"
    mv $newName ../resources/
}

#get regular 64
wget "http://files.pharo.org/get-files/$pharoVersion/$imageName"
extractAndName $1 "clean" $imageName

#get minimal 64 bit
imageName="latest-minimal-64.zip"
wget "http://files.pharo.org/image/$pharoVersion/$imageName"
extractAndName $1 "minimal" $imageName
