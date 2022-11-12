pathFinding
getImageForPharo: aNumber

	| commandLine |
	LibC runCommand: 'chmod 711 ./scripts/*'.
	commandLine := 'cd ' , ((IceRepository registeredRepositoryIncludingPackage: self package) location asFileReference / 'scripts') pathString , ' && chmod 711 getPharoImage.sh  &&  ./getPharoImage.sh'.
	^ LibC runCommand: commandLine , ' ' , aNumber asString