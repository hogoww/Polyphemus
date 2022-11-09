tests
testOOPCompiledCanDecompile


	| context topFrame dissicatedMethod hostMethod |
	topFrame := stackPages mostRecentlyUsedPage topFrame.
	context := topFrame marryToContext.

	dissicatedMethod := context method.
	"hard code hostMehtod for now"
	hostMethod := SessionManager>>#newSession.
	self assert: hostMethod decompile equals: dissicatedMethod decompile