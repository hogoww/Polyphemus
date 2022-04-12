accessing
readImageHeader32
	| lastHash savedWindowSize headerFlags |
	
	headerSize := (memory copyFrom: 5 to: 8)
		              unsignedLongAt: 1
		              bigEndian: false.
	dataSize := (memory copyFrom: 9 to: 12)
		            unsignedLongAt: 1
		            bigEndian: false.
	self assert: headerSize + dataSize = memory size.
	oldBaseAddress := (memory copyFrom: 13 to: 16)
		                  unsignedLongAt: 1
		                  bigEndian: false.
	specialObjectsArrayOop := (memory copyFrom: 17 to: 20)
		                          unsignedLongAt: 1
		                          bigEndian: false.
	lastHash := (memory copyFrom: 21 to: 24)
		            unsignedLongAt: 1
		            bigEndian: false.
	savedWindowSize := (memory copyFrom: 25 to: 28)
		                   unsignedLongAt: 1
		                   bigEndian: false.
	headerFlags := (memory copyFrom: 29 to: 32)
		               unsignedLongAt: 1
		               bigEndian: false