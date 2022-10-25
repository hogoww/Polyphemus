tests
testTraitIsDetectedAsTrait
	| traitOop |
	traitOop := self reifyOop: (reifiedMemory preFindClassNamed: #TClass).
	self assert: traitOop isTraitOop