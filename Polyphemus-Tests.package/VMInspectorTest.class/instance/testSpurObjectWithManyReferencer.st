tests-graphObject
testSpurObjectWithManyReferencer
	| slot referencer |
	slot := SpurObject on: self newZeroSizedObject image: image.
	referencer := (1 to: 20) collect:[ :i | | oop |
		oop := SpurObject on: (self newObjectWithSlots: 1) image: image.
		oop slotAt: 1 put: slot.
		oop
		].
	self assert: (referencer includesAll: slot allReferencers)