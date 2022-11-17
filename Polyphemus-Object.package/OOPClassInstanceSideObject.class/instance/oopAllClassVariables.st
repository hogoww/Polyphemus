classVariables
oopAllClassVariables
	^ (self oopSlotNamed: memory mode classVariablesSlotName) array allSlots 
		select: [ :o | o isNotNilOop ] 
		thenCollect: [ :o | o oopSlotNamed: #value ]