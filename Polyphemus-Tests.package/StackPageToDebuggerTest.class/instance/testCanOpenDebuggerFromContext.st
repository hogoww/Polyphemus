tests
testCanOpenDebuggerFromContext


	| context  debugSession topFrame |
	topFrame := stackPages mostRecentlyUsedPage topFrame.
	context := topFrame oopContext.
	context = reifiedMemory reifiedNilObject ifTrue: [ context := topFrame asOopContext ].
	self halt.
	"debugSession := DebugSession named: 'test from oopContext' on: nil startedAt: context"