accessing
initializeObjectsFromMemory
	memory allNewSpaceObjectsDo: [ :anOop | 
		self objectAt: anOop put: (self reifyOop: anOop)  ].
	memory allOldSpaceObjectsDo: [ :anOop |
		self objectAt: anOop put: (self reifyOop: anOop)  ].