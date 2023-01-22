action
cdCommand
	| package repoPath |
	package := IceRepository registeredRepositoryIncludingPackage: self class package.
	repoPath := (package 
		ifNotNil: [ package location ]
		ifNil: [ FileSystem workingDirectory ]) pathString.
	^ 'cd ' ,  repoPath , ' && '