visiting
visitOOPAbstractObject: anOopObject

	subgraph associationAt: anOopObject
		ifPresent: [ : a |
			a value > layer ifTrue: [ a value: layer ].
			^ self ]
		ifAbsent: [ subgraph at: anOopObject put: layer ].
			
	anOopObject allReifiedSlots do: [ :aSlot | self visitObject: aSlot ]