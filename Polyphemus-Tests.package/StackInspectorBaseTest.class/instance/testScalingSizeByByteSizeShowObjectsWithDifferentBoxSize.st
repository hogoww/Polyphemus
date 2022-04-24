test-displaying
testScalingSizeByByteSizeShowObjectsWithDifferentBoxSize
	
	|  smallObjectBox bigObjectBox |
	oldSpace updateScalingTo: oldSpace scalingSizeByByteSize.
	
	smallObjectBox := oldSpace oopForAddress: memory nilObject.
	bigObjectBox := oldSpace oopForAddress: memory freeListsObject.
	
	self assert: smallObjectBox extent < bigObjectBox extent