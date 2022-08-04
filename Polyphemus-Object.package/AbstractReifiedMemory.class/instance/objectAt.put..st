accessing
objectAt: anOop put: anObject

	"Should be initialized before this point, see self >> #initializeObjectsFromMemory"

	"objects addresses are offsets from a base address and then compacted"

	objects at: anOop - baseAddress >> 3 put: anObject