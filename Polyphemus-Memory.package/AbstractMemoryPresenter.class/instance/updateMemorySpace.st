updating
updateMemorySpace
	"If the scope is unset, we fail early"
	scopingBlock ifNil: [ ^ self ].
	
	self updateScope.
	memorySpace refresh.
	self signalUpdate