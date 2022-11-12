imageName
cdCommand
	^ 'cd ' , (IceRepository registeredRepositoryIncludingPackage: self class package) location pathString , ' && '