visiting
visitOOPAbstractObject: anOopObject


	| existingObject |
	existingObject := (memory objectAt: anOopObject address).
	memory objectAt: anOopObject address put: anOopObject.

	existingObject 
		ifNotNil: [ 
			firstVisit := false.
			^ self 
			].
		
	anOopObject allSlots do: [ :aSlot | self visitObject: aSlot ]