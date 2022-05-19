initialization
initializeObjectsFromMemory
	"set up a few things without reification"
	self setUpMetaclass.
	self setUpIsCandleImage.
	self setUpStringClasses.

	"fill the memory of all objects"
	memory allObjectsDo: [ :anOop | 
		self objectAt: anOop put: (self reifyOop: anOop) ].
	"recreate explicitly a few objects, particularly the class table and class table pages"
	self overrideParticularObjects.
