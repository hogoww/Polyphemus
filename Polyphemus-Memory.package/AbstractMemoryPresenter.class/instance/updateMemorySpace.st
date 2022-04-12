updating
updateMemorySpace

	self initializeScope.
	self buildMemorySpace: memorySpace.
	
	memorySpace canvas 
		zoomToFit;
		signalUpdate.