classVariables
oopAllClassVariablesNames
	^ (self oopSlotNamed: memory mode classVariablesSlotName) array allSlots 
		select: [ :o | o isNotNilOop ] 
		thenCollect: [ :o | (memory mode nameForClassVariable: o) asString ]