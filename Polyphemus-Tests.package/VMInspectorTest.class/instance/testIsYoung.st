tests-testing
testIsYoung
	| oop |
	oop := SpurObject on: (self newObjectWithSlots: 1) image: image.

	self assert: oop isYoung.