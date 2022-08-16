visiting
visitOOPAbstractObject: anOopObject

	hierarchy associationAt: anOopObject
		ifPresent: [ : a |
			a value > layer ifTrue: [ a value: layer ].
			^ self ]
		ifAbsent: [ hierarchy at: anOopObject put: layer ].
			
	anOopObject oopSubclasses do: [ :aSlot | self visitObject: aSlot ]