initialization
initializeObjectsFromMemory
	"Pre creating it allows to create class table pages"
	self setUpMetaclass.
	self setUpIsCandleImage.
	
	self setUpStringClasses.
	self preCreateObjects.
	memory allObjectsDo: [ :anOop | 
		self objectAt: anOop put: (self reifyOop: anOop) ].
	
