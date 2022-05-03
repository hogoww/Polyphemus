testing
classTableFor: anImage
	^ ClassTableObjects at: anImage ifAbsentPut: [ self on: anImage memory classTableRootObj image: anImage ]