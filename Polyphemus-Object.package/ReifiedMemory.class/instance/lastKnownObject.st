accessing
lastKnownObject
	
	"Sure there is better ways"
	"I suppose there is a freeObject at the end so the lastKnowObject is the penUltimate"
	^ objects at: (objects keys at: (objects keys size - 1))

	