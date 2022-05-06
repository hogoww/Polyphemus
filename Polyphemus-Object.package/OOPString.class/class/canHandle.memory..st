instance creation
canHandle: anAddress memory: aMemory
	"is the class or superclass of the class of the object String, known inside the SpecialObjectArray"
	|  oopClass oopSuperClass |
	[	
		oopClass := aMemory classForClassTag: (aMemory fetchClassTagOf: anAddress).
		oopSuperClass := aMemory fetchPointer: 0 ofObject: oopClass.
	] on: AssertionFailure do: [ ^ false ].

	^ oopClass = aMemory classString or: [ oopSuperClass = aMemory classString ]