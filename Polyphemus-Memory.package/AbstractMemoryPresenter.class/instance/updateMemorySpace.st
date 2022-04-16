updating
updateMemorySpace

	self updateScope.
	self buildMemorySpace.
	
	memorySpace canvas 
		zoomToFit;
		signalUpdate.