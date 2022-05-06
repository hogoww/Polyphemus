testing
classTableFor: aMemory
  ^ ClassTableObjects 
		at: aMemory 
		ifAbsentPut: [ super on: aMemory classTableRootObj memory: aMemory ]