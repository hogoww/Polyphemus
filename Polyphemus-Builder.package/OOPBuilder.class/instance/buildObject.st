build
buildObject
	| oop |
	self checkFormat.
	oopIsClass ifTrue: [ self checkClassAttributes ].
	oop := self oopIsOld
		ifTrue: [ self allocateInOldSpace ]
		ifFalse: [ self allocateInNewSpace ].
	oopIsClass ifTrue: [ self initializeClassOop: oop ].
	oopIsImmutable ifTrue: [ memory setIsImmutableOf: oop to: true ].
	^ oop