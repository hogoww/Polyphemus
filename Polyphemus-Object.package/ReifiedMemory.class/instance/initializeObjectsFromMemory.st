initialization
initializeObjectsFromMemory
	"Pre creating it allows to create class table pages"
	self setUpMetaclass.
	self preCreateObjects.
	memory allObjectsDo: [ :anOop | 
		self objectAt: anOop put: (self reifyOop: anOop) ].
	
	self setUpIsCandleImage