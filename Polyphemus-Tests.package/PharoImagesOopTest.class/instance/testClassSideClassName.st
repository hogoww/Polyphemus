tests
testClassSideClassName
	| classOop |
	classOop := reifiedMemory reifiedMetaclass.
	self assert: classOop oopClassSide oopName equals: #'Metaclass class'