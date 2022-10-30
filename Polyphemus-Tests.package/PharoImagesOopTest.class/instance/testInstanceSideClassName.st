tests
testInstanceSideClassName
	| classOop |
	classOop := reifiedMemory reifiedMetaclass.
	self assert: classOop oopName equals: #Metaclass