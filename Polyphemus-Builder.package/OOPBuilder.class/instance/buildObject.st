build
buildObject
	| oop |
	self checkFormat.
	self checkIndexable.
	oopIsClass ifTrue: [ self checkClassAttributes ].
	oop := self oopIsOld
		ifTrue: [ self allocateInOldSpace ]
		ifFalse: [ self allocateInNewSpace ].
	oopIsClass ifTrue: [ self initializeClassOop: oop ].
	oopIsImmutable ifTrue: [ memory setIsImmutableOf: oop to: true ].
	^ oop