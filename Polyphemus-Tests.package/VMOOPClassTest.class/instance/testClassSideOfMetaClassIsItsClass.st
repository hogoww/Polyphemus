tests
testClassSideOfMetaClassIsItsClass

	| metaclassOop |
	metaclassOop := reifiedMemory reifiedMetaclass.
	self assert: metaclassOop oopClassSide equals: metaclassOop oopClass