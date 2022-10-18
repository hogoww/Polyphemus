images
getImageForPharo: aNumber

	| commandLine |
	commandLine := 'cd ' , ((IceRepository registeredRepositoryIncludingPackage: self package) location asFileReference / 'scripts') pathString , '  &&  ./getPharoImage.sh'.
	^ LibC runCommand: commandLine , ' ' , aNumber asString