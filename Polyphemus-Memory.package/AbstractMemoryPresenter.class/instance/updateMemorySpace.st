updating
updateMemorySpace

	self updateScope.
	self buildMemorySpace.
	self colorMemorySpace.
	
	memorySpace canvas 
		zoomToFit;
		signalUpdate.