imageName
cleanUp: anImageName
	self runCommand: 'rm pharo.version *.changes ' , anImageName , '.zip' , ' 90 100 110'