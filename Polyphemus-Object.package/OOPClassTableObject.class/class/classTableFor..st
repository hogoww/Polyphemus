testing
classTableFor: anImage
  ^ ClassTableObjects 
		at: anImage 
		ifAbsentPut: [ super on: anImage memory classTableRootObj image: anImage ]