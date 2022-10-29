tests
testBuildOldPinnedObject
	oopBuilder 
		oopIsPinned: true;
		oopIsOld: true.
	reifiedOop := self buildObject.
	
	self assert: reifiedOop isPinnedOop 