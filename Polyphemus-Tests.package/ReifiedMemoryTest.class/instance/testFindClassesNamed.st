tests
testFindClassesNamed
	| res |
	res := reifiedMemory findClassesNamed: #(PCMetaclass PCSmallInteger) asOrderedCollection.
	self assert: res size equals: 2.
	self assert: (res at: #PCMetaclass) equals: reifiedMemory reifiedMetaclass.
	self assert: (res at: #PCSmallInteger) equals: (self reifyOop: (reifiedMemory integerObjectOf: 4)) oopClass.
