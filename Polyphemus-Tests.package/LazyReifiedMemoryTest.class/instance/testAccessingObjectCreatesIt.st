tests
testAccessingObjectCreatesIt
	| oop |
	reifiedMemory reifyOop: reifiedMemory trueObject.
	oop := (reifiedMemory objectAt: reifiedMemory trueObject).
	self assert: oop printString equals: #trueObject