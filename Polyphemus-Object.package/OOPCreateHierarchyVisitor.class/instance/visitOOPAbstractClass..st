visiting
visitOOPAbstractClass: aClassOop

	hierarchy associationAt: aClassOop
		ifPresent: [ : a |
			a value > layer ifTrue: [ a value: layer ].
			^ self ]
		ifAbsent: [ hierarchy at: aClassOop put: layer ].
			
	aClassOop oopSubclasses do: [ :aSlot | self visitObject: aSlot ]