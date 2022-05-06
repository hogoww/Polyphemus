testing
classTableFor: anImage
  ^ ClassTableObjects 
		at: anImage 
		ifAbsentPut: [ super on: anImage classTableRootObj image: anImage ]