visiting
visitOOPAbstractObject: anOopObject

	(memory objectAt: anOopObject address) ifNotNil: [ ^ self ].
	memory objectAt: anOopObject address put: anOopObject.
		
	self visitSlotsOf: anOopObject