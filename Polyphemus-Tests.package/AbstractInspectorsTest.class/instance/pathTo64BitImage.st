running
pathTo64BitImage
	^ ((IceRepository registeredRepositoryIncludingPackage: self class package) location / 'resources' / '64BitImage.image') pathString