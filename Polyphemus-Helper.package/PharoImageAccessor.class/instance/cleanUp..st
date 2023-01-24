action
cleanUp: anImageName
	self runCommand: 'rm pharo.version wget.log* ' , anImageName , '.zip'