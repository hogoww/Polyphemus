action
getImageVersion: aNumber withName: imageName
	| newName |
	self download: 'http://files.pharo.org/image/', (aNumber * 10) asString , '/' , imageName , '.zip'.
	self extract: imageName.
	self cleanUp: imageName.
	newName := self class nameForVersion: aNumber imageName: imageName.
	self renameFile: '*.image' to: newName , '.image'.
	self renameFile: '*.sources' to: newName , '.sources'.
	self renameFile: '*.changes' to: newName , '.changes'.
	self moveFileToResources: newName , '.image'.
	self moveFileToResources: newName , '.sources'.
	self moveFileToResources: newName , '.changes'.
	