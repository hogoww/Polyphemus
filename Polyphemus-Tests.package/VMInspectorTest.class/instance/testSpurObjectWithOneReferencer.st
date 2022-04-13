tests-allReferencers
testSpurObjectWithOneReferencer
	| oop slot |
	oop := SpurObject on: (self newObjectWithSlots: 1) image: image.
	slot := SpurObject on: self newZeroSizedObject image: image.
	oop slotAt: 1 put: slot. 
	self assert: slot allReferencers size equals: 1.
	self assert: slot allReferencers anyOne equals: oop