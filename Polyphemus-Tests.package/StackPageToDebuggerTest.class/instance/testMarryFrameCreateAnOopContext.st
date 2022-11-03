tests
testMarryFrameCreateAnOopContext


	| context topFrame |
	topFrame := stackPages mostRecentlyUsedPage topFrame.
	self halt.
	context := topFrame marryToContext.
	
	"I dunno if we have an update"
	reifiedMemory := FullyReifiedMemory on: memory.
	self halt.
	self assert: context equals: reifiedMemory lastObject.