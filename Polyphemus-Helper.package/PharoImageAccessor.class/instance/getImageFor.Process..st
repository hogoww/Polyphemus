imageName
getImageFor: aNumber Process: imageName
	| newName |
	self download: 'http://files.pharo.org/image/', (aNumber * 10) asString , '/' , imageName , '.zip'.
	self extract: imageName.
	self cleanUp: imageName.
	newName := (imageName includesSubstring: 'minimal') 
		ifTrue: [ 'minimal' ] 
		ifFalse: [ 'clean' ].
	newName := newName , 'P' , aNumber asString.
	self renameFile: '*.image' to: newName , '.image'.
	self renameFile: '*.sources' to: newName , '.sources'.
	self moveFileToResources: newName , '.image'.
	self moveFileToResources: newName , '.sources'.
	
	