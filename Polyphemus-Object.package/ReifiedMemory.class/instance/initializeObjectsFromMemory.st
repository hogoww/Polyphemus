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
	[ 
	memory allObjectsDo: [ :anOop | 
		self objectAt: anOop put: (self reifyOop: anOop) ] ]
		on: Error
		do: [ :e | 
			lastKnownObject := self findObjectBefore: e oop.
			flagErrorObjects := true.
			self reifyMemoryThroughRoots ].
	"Add freeList objects"
	flagErrorFreeTree ifTrue: [ 
		flagErrorObjects
			ifFalse: [ self reconstructFreeLists ]
			ifTrue: [ self error: 'We cannot recover in this state.' ] ].
	memory allFreeObjectsDo: [ :anOop | 
		self objectAt: anOop put: (OOPFreeObject on: anOop memory: self) ].
	"recreate explicitly a few objects, particularly the class table and class table pages"
	self overrideParticularObjects.
	"Create compressed version for further iterations"
	flagErrorObjects ifTrue: [ 
		self fillBlankBetween: lastKnownObject address and: objects size ].
	self createCompressedVersion