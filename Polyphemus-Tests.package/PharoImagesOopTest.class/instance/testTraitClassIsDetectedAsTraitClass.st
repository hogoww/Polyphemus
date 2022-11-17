tests
testTraitClassIsDetectedAsTraitClass
	| traitOop |
	traitOop := self reifyOop: (memory fetchClassOf: (reifiedMemory reifiedClassTable classAtIndex: (reifiedMemory preFindClassNamed: #TClass))).
	self assert: traitOop isClassTraitOop