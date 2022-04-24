test-displaying
testScalingWidthByByteSizeShowObjectsWithDifferentBoxWidth
	
	|  smallObjectBox bigObjectBox |
	oldSpace updateScalingTo: oldSpace scalingWidthByBytesize.
	
	smallObjectBox := oldSpace oopForAddress: memory nilObject.
	bigObjectBox := oldSpace oopForAddress: memory freeListsObject.
	
	self assert: smallObjectBox extent y equals: bigObjectBox extent y.
	self assert: smallObjectBox extent x < bigObjectBox extent x.