initialization
initializeObjectsFromMemory
	"Pre creating it allows to create class table pages"
	self setUpMetaclass.
	self setUpIsCandleImage.
	
	self preCreateObjects.
	self setUpStringClasses.
	memory allObjectsDo: [ :anOop | 
		self objectAt: anOop put: (self reifyOop: anOop) ].
	
