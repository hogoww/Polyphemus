tests-allReferencers
testSpurObjectWithManyReferencer
	| slot referencer |
	slot := self objectForOop: self newZeroSizedObject.
	referencer := (1 to: 20) collect:[ :i | | oop |
		oop := self objectForOop: (self newObjectWithSlots: 1).
		oop slotAt: 1 put: slot.
		oop
		].
	self assert: (referencer includesAll: slot allReferencers)