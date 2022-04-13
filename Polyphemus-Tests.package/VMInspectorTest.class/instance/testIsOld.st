tests-testing
testIsOld
	| oop |
	oop := SpurObject on: (self newOldSpaceObjectWithSlots: 1) image: image.

	self assert: oop isOld.