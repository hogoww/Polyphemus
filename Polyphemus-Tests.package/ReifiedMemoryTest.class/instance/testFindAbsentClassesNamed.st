tests
testFindAbsentClassesNamed
	| foundClasses |
	foundClasses := reifiedMemory findClassesNamed: #(something) asOrderedCollection.
	self assert: (foundClasses at: #something) equals: reifiedMemory reifiedNilObject.
