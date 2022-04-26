running
pathTo64BitImage
	| package |
	package := IceRepository registeredRepositoryIncludingPackage: self class package.
	^ ((package 
		ifNotNil: [ package location ]
		ifNil: [ FileSystem workingDirectory ])  / 'resources' / '64BitImage.image') pathString