tests-allReferencers
testSpurObjectWithManyReferencer
	| slot referencer |
	slot := self reifyOop: self newZeroSizedObject.
	referencer := (1 to: 20) collect:[ :i | | oop |
		oop := self reifyOop: (self newObjectWithSlots: 1).
		oop slotAt: 1 put: slot.
		oop
		].
	self assert: (referencer includesAll: slot allReferencers)