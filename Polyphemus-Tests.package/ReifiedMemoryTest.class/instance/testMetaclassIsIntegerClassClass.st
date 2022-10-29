tests
testMetaclassIsIntegerClassClass
	| anInteger metaclass |
	anInteger := self reifyOop: (memory integerObjectOf: 42).
	metaclass := anInteger oopClass "SmallInteger" 
		oopClass "SmallInteger class" 
		oopClass "metaclass".
	self assert: metaclass equals: reifiedMemory reifiedMetaclass