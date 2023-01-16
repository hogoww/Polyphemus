classVariables
oopAllClassVariables
	^ (self oopSlotNamed: memory mode classVariablesSlotName) array allReifiedSlots 
		select: [ :o | o isNotNilOop ] 
		thenCollect: [ :o | o oopSlotNamed: #value ]