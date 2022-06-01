testing
isInRange: anOopAddress

	"Name is misleading, rename me afterward"
	
	^ anOopAddress > self lastKnownObject address and: [ anOopAddress < self endOfMemory. ]