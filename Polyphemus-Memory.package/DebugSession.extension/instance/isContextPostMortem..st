*Polyphemus-Memory
isContextPostMortem: selectedContext

	"return whether we're inspecting a frozen exception without a process attached"

	| suspendedContext |
	interruptedProcess ifNil: [ ^true ] ifNotNil: [ 
		suspendedContext := interruptedProcess suspendedContext.
		suspendedContext ifNil: [ ^ false ] ].
	^ (suspendedContext hasContext: selectedContext) not