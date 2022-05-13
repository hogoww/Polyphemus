accessing
objectAt: anOop put: anObject
	"Should be initialized before this point, see self >> #initializeObjectsFromMemory"
	
	objects at: anOop put: anObject