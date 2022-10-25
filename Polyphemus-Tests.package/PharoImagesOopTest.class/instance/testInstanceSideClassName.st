tests
testInstanceSideClassName
	| classOop |
	classOop := reifiedMemory reifiedMetaclass.
	self assert: classOop oopClassName equals: #Metaclass