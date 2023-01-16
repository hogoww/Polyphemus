classVariables
oopAllClassVariablesNames
	^ (self oopSlotNamed: memory mode classVariablesSlotName) array allReifiedSlots 
		select: [ :o | o isNotNilOop ] 
		thenCollect: [ :o | (memory mode nameForClassVariable: o) asString ]