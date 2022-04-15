instance creation
canHandle: anAddress image: image
	"is the class or superclass of the class of the object String, known inside the SpecialObjectArray"
	| memory oopClass oopSuperClass |
	[	
		memory := image memory.
		oopClass := memory classForClassTag: (memory fetchClassTagOf: anAddress).
		oopSuperClass := memory fetchPointer: 0 ofObject: oopClass.
	] on: AssertionFailure do: [ ^ false ].

	^ oopClass = memory classString or: [ oopSuperClass = memory classString ]