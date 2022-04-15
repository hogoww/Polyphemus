test-displaying
testScallingByByteSizeShowObjectsWithDifferentBoxSize
	
	|  smallObjectBox bigObjectBox |
	oldSpace setScalingByByteSize.
	self updateSpaces.
	smallObjectBox := oldSpace oopForAddress: memory nilObject.
	bigObjectBox := oldSpace oopForAddress: memory freeListsObject.
	
	self assert: smallObjectBox extent < bigObjectBox extent