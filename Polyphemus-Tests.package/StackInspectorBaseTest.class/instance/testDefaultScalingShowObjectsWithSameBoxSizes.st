test-displaying
testDefaultScalingShowObjectsWithSameBoxSizes
	
	|  smallObjectBox bigObjectBox |
	smallObjectBox := oldSpace oopForAddress: memory nilObject.
	bigObjectBox := oldSpace oopForAddress: memory freeListsObject.
	
	self assert: smallObjectBox extent equals: bigObjectBox extent