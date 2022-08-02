initialization
initializeObjectsFromMemory

	"set up a few things without reification"

	self setUpBaseAddress.
	self setUpMetaclass.
	self setUpIsCandleImage.
	self setUpStringClasses.
	self setUpCompiledMethodClass.
	self setUpMetaclassForTrait.
	self setUpTraitedMetaclass.

	"fill the memory of all objects"

	UIManager default
		displayProgress: 'Reifying Memory'
		from: memory nilObject
		to: memory endOfMemory
		during: [ :bar | 
			[ 
			memory allObjectsDo: [ :anOop | 
				bar value: anOop.
				bar title: 'Generating Object at address: ' , anOop printString.
				self
					objectAt: anOop
					put: (OOPAbstractEntity instantiateObject: anOop on: self) ] ]
				on: Error
				do: [ :e | 
					bar title: 'Generating Objects with visitor, flying blind'.
					lastKnownObject := self findObjectBefore: e oop.
					flagErrorObjects := true.
					self reifyMemoryThroughRoots ].

			"Add freeList objects"
			flagErrorFreeTree ifTrue: [ 
				flagErrorObjects
					ifFalse: [ self reconstructFreeLists ]
					ifTrue: [ self error: 'We cannot recover in this state.' ] ].

			memory allFreeObjectsDo: [ :anOop | 
				bar value: anOop.
				bar title:
					'Generating Free Object at address: ' , anOop printString.
				self objectAt: anOop put: (OOPFreeObject on: anOop memory: self) ] ].
	"recreate explicitly a few objects, particularly the class table and class table pages"
	self overrideParticularObjects.
	"Create compressed version for further iterations"
	flagErrorObjects ifTrue: [ self fillBlankBetween: lastKnownObject address and: objects size ].
	self createCompressedVersion