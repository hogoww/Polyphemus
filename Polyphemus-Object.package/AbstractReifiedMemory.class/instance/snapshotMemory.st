updating
snapshotMemory
	"This size is for an oldSpace we take the end - the beginning then we compress by worsize because every address is wordSize aligned then by 8 because we remove the 3 bits tag"
	| arraySize |
	arraySize := (memory endOfMemory - memory newSpaceStart) >> 3.
	objectsArray := Array new: arraySize.
	self initializeObjectsFromMemory.