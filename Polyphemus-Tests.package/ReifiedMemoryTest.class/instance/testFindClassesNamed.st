tests
testFindClassesNamed
	| foundClasses |
	foundClasses := reifiedMemory findClassesNamed: #(PCMetaclass PCSmallInteger) asOrderedCollection.
	self assert: foundClasses size equals: 2.
	self assert: (foundClasses at: #PCMetaclass) equals: reifiedMemory reifiedMetaclass.
	self assert: (foundClasses at: #PCSmallInteger) equals: (self reifyOop: (reifiedMemory integerObjectOf: 4)) oopClass.
