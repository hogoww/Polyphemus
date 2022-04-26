*Polyphemus-Memory
registeredRepositoryIncludingPackage: aPackage 
	^ self registry 
		detect: [ :each | each includesPackageNamed: aPackage name ]
		ifNone: [ self error: (String streamContents: [:s | Registry printOn: s ]) ]