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
		self objectAt: anOop put: (self reifyOop: anOop) ] ] on: Error do: [ 
		flagErrorObjects := true.
		self attemptObjectGraphTraversal ].
	memory allFreeObjectsDo: [ :anOop | 
		self objectAt: anOop put: (OOPFreeObject on: anOop memory: self) ].
	"recreate explicitly a few objects, particularly the class table and class table pages"
	self overrideParticularObjects.
	self createCompressedVersion.