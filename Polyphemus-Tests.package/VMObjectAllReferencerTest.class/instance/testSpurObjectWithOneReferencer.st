tests-allReferencers
testSpurObjectWithOneReferencer
	| oop slot |
	oop := self objectForOop: (self newObjectWithSlots: 1).
	slot := self objectForOop: self newZeroSizedObject.
	oop slotAt: 1 put: slot. 
	self assert: slot allReferencers size equals: 1.
	self assert: slot allReferencers anyOne equals: oop