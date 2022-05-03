tests
testClassTableForTwoDifferentImagesAreDifferent
	| classTable1 image2 classTable2 |
	classTable1 := self reifyOop: memory classTableRootObj.
	image2 := image veryDeepCopy.
	classTable2 := OOPAbstractEntity newFor: image2 memory classTableRootObj image: image2.
	self deny: classTable1 identicalTo: classTable2