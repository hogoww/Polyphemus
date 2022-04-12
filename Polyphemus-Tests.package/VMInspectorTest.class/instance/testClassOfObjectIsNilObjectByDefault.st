test-testing
testClassOfObjectIsNilObjectByDefault
	| objectOop object |
	objectOop := self newObjectWithSlots: 1.
	
	object := (image objectForOop: objectOop).
	self assert: object classSpurObject address equals: image simulator nilObject