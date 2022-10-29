tests
testClassSideClassName
	| classOop |
	classOop := reifiedMemory reifiedMetaclass.
	self assert: classOop oopClassSide oopClassName equals: #'Metaclass class'