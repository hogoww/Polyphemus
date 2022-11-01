tests
testTraitIsDetectedAsTrait
	| traitOop |
	traitOop := self reifyOop: (reifiedMemory reifiedClassTable classAtIndex: (reifiedMemory preFindClassNamed: #TClass)).
	self assert: traitOop isTraitOop