tests
testOOPCompiledMethodCanDecompile


	| context topFrame dissicatedMethod hostMethodSource dissicatedMethodSource |
	topFrame := stackPages mostRecentlyUsedPage topFrame.
	context := topFrame marryToContext.

	dissicatedMethod := context method.
	"hard code hostMehtod for now"
	hostMethodSource := (SessionManager>>#newSession) decompile.
	dissicatedMethodSource := dissicatedMethod decompile.
		
	self assert: hostMethodSource equals: dissicatedMethodSource.