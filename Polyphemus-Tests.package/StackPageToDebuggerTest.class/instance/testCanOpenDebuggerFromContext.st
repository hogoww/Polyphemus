tests
testCanOpenDebuggerFromContext


	| context  debugSession topFrame |
	topFrame := stackPages mostRecentlyUsedPage topFrame.
	context := topFrame marryToContext.
	exception := self nullExceptionFor: context named: 'Dummy exception for context reification'.
	debugSession := DebugSession named: exception description on: nil startedAt: exception signalerContext.
	debugSession exception: exception.
	StDebugger openOn: debugSession withFullView: true .
	self halt.