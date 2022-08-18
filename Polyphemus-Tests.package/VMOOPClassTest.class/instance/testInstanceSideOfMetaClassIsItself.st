tests
testInstanceSideOfMetaClassIsItself

	| metaclassOop |
	metaclassOop := reifiedMemory reifiedMetaclass.
	self assert: metaclassOop oopInstanceSide equals: reifiedMemory reifiedMetaclass