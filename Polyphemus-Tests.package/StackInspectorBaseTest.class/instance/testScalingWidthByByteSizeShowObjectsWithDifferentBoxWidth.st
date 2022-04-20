test-displaying
testScalingWidthByByteSizeShowObjectsWithDifferentBoxWidth
	
	|  smallObjectBox bigObjectBox |
	oldSpace updateScalingTo: #setScalingWidthByBytesize.
	
	smallObjectBox := oldSpace oopForAddress: memory nilObject.
	bigObjectBox := oldSpace oopForAddress: memory freeListsObject.
	
	self assert: smallObjectBox extent < bigObjectBox extent