tests-classTable
testClassTableForTwoDifferentImagesAreDifferent
	| classTable1 classTable2 memory2 |
	classTable1 := self reifyOop: memory classTableRootObj.
	memory2 := reifiedMemory veryDeepCopy.
	classTable2 := OOPAbstractEntity newFor: memory2 classTableRootObj memory: memory2.
	self deny: classTable1 identicalTo: classTable2