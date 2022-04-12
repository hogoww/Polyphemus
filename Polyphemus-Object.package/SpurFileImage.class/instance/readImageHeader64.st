accessing
readImageHeader64
	| lastHash savedWindowSize headerFlags |
	
	headerSize := (memory copyFrom: 5 to: 8)
		              unsignedLongAt: 1
		              bigEndian: false.
	dataSize := (memory copyFrom: 9 to: 16) 
		            unsignedLong64At: 1
		            bigEndian: false.
	self assert: headerSize + dataSize = memory size.
	oldBaseAddress := (memory copyFrom: 17 to: 24)
		                  unsignedLong64At: 1
		                  bigEndian: false.
	specialObjectsArrayOop := (memory copyFrom: 25 to: 32)
		                          unsignedLong64At: 1
		                          bigEndian: false.
	lastHash := (memory copyFrom: 33 to: 40)
		            unsignedLong64At: 1
		            bigEndian: false.
	savedWindowSize := (memory copyFrom: 41 to: 48)
		                   unsignedLong64At: 1
		                   bigEndian: false.
	headerFlags := (memory copyFrom: 49 to: 56)
		               unsignedLong64At: 1
		               bigEndian: false