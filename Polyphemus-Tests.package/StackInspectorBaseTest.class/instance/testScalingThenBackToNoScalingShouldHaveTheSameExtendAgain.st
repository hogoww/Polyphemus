test-displaying
testScalingThenBackToNoScalingShouldHaveTheSameExtendAgain
	
	|  smallObjectBox bigObjectBox |
	oldSpace updateScalingTo: oldSpace scalingWidthByBytesize.
	oldSpace updateScalingTo: oldSpace scalingToDefault.
	
	smallObjectBox := oldSpace oopForAddress: memory nilObject.
	bigObjectBox := oldSpace oopForAddress: memory freeListsObject.
	self assert: smallObjectBox extent equals: bigObjectBox extent