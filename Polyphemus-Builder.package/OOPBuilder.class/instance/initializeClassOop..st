build
initializeClassOop: anOop
 	
	memory storePointer: 0 ofObject: anOop withValue: (memory classAtIndex: self indexOfClass).
	self setUpMethodDictionaryOf: anOop.
	memory storePointer: 2 ofObject: anOop withValue: (memory integerObjectOf: oopFormatOfInstances).

	oopClassIndexinstalation = self defaultClassIndex 
		ifTrue: [ memory ensureBehaviorHash: anOop ]
		ifFalse: [ | classHash |
			classHash := oopClassIndexinstalation - 1.
			memory setHashBitsOf: anOop to: classHash.
			self ensureClassPageExistsFor: classHash.
			memory classAtIndex: classHash put: anOop.
			].