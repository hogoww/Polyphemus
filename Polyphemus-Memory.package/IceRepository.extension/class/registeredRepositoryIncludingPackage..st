*Polyphemus-Memory
registeredRepositoryIncludingPackage: aPackage 
	^ self registry 
		detect: [ :each | each includesPackageNamed: aPackage name ]
		ifNone: [ self error: Registry ]