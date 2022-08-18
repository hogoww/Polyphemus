tests
testClassSideOfMetaClassClassIsItself

	| metaclassClassOop |
	metaclassClassOop := reifiedMemory reifiedMetaclass oopClass.
	self assert: metaclassClassOop oopClassSide equals: metaclassClassOop