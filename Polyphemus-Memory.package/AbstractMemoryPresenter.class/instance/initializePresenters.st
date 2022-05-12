initialization
initializePresenters
	memorySpace := self newRoassal.
	bitmap := self newEmptyBitmap.
	memorySpace script: [ :canvas | self buildMemorySpaceIn: canvas ]