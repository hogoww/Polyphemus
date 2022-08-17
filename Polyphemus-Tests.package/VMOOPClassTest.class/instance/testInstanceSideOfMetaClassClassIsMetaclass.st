tests
testInstanceSideOfMetaClassClassIsMetaclass

	| metaclassClassOop |
	metaclassClassOop := reifiedMemory reifiedMetaclass oopClass.
	self assert: metaclassClassOop oopInstanceSide equals: reifiedMemory reifiedMetaclass