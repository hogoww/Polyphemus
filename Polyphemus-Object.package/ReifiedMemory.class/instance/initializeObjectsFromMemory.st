accessing
initializeObjectsFromMemory
	"Pre creating it allows to create class table pages"
	self preCreateObjects.
	
	memory allNewSpaceObjectsDo: [ :anOop | 
		self objectAt: anOop put: (self reifyOop: anOop) ].
	memory allOldSpaceObjectsDo: [ :anOop |
		self objectAt: anOop put: (self reifyOop: anOop) ].