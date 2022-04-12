updating
updateInspector

	self buildMemorySpace: newSpace.
	
	newSpace canvas 
		zoomToFit;
		signalUpdate.
	self buildMemorySpace: oldSpace.
	oldSpace canvas
		zoomToFit;
		signalUpdate.