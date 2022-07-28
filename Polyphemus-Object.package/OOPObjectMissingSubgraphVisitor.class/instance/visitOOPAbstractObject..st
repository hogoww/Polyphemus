visiting
visitOOPAbstractObject: anOopObject

	| compactedAddress |
	firstVisit
		ifTrue: [ firstVisit := false ]
		ifFalse: [ 
			compactedAddress := anOopObject address - baseAddress >> 3.
			(toIgnore at: compactedAddress) ifNotNil: [ ^ self ].
			toIgnore at: compactedAddress put: anOopObject ].
		
	anOopObject allSlots do: [ :aSlot | self visitObject: aSlot ]