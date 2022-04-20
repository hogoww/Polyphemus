test-displaying
testScalingThenBackToNoScallingShouldHaveTheSameExtendAgain
	
	|  smallObjectBox bigObjectBox |
	oldSpace updateScalingTo: #setScalingWidthByBytesize.
	smallObjectBox := oldSpace oopForAddress: memory nilObject.
	bigObjectBox := oldSpace oopForAddress: memory freeListsObject.
	oldSpace updateScalingTo: #setScalingToDefault.
	
	self assert: smallObjectBox extent equals: bigObjectBox extent