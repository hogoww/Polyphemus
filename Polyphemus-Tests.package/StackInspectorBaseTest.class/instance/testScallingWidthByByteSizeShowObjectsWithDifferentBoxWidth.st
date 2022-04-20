test-displaying
testScallingWidthByByteSizeShowObjectsWithDifferentBoxWidth
	
	|  smallObjectBox bigObjectBox |
	oldSpace setScalingWidthByBytesize.
	self updateSpaces.
	smallObjectBox := oldSpace oopForAddress: memory nilObject.
	bigObjectBox := oldSpace oopForAddress: memory freeListsObject.
	
	self assert: smallObjectBox extent < bigObjectBox extent