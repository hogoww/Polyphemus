pathFinding
pathToImageNamed: anImageName
	^ ((IceRepository registeredRepositoryIncludingPackage: self class package) location / 'resources' / anImageName) pathString