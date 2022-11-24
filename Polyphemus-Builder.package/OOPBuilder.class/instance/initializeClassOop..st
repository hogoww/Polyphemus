build
initializeClassOop: anOop
	memory storePointer: 0 ofObject: anOop withValue: (memory classAtIndex: self indexOfClass).
	self setUpMethodDictionaryOf: anOop.
	memory storePointer: 2 ofObject: anOop withValue: (memory integerObjectOf: oopFormatOfInstances).
	
	oopClassIndexinstalation = self defaultClassIndex 
		ifTrue: [ memory ensureBehaviorHash: anOop ]
		ifFalse: [
			memory setHashBitsOf: anOop to: oopClassIndexinstalation.
			self ensureClassPageExistsFor: oopClassIndexinstalation.
			memory classAtIndex: oopClassIndexinstalation put: anOop.
			].