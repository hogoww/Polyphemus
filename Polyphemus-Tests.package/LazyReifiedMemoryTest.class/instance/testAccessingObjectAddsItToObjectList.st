tests
testAccessingObjectAddsItToObjectList
	reifiedMemory reifyOop: reifiedMemory trueObject.
	self assert: reifiedMemory objects second printString equals: #trueObject