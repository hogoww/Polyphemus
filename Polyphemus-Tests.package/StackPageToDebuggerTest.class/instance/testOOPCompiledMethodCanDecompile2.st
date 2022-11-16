tests
testOOPCompiledMethodCanDecompile2


	| context topFrame dissicatedMethod hostMethodSource dissicatedMethodSource |
	topFrame := stackPages mostRecentlyUsedPage topFrame.
	context := topFrame marryToContext.
	
	context := context sender sender.
	self halt.

	dissicatedMethod := context method.
	"hard code hostMehtod for now"
	hostMethodSource := (SessionManager>>#launchSnapshot:andQuit:) decompile.
	dissicatedMethodSource := dissicatedMethod decompile.
		
	self assert: hostMethodSource equals: dissicatedMethodSource.