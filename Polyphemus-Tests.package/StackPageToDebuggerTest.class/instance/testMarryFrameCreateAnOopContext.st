tests
testMarryFrameCreateAnOopContext

	
	|  topFrame interpreterContext modelContext |
	topFrame := stackPages mostRecentlyUsedPage topFrame.

	interpreterContext := topFrame marryToContext.

	modelContext := topFrame asOopContext.
	
	self assert: interpreterContext equals: modelContext.