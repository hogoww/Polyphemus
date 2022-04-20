updating
updateMemorySpace
	self updateScope.
	self buildMemorySpaceIn: memorySpace canvas.
	"self buildMemorySpace.
	
	memorySpace canvas 
		zoomToFit;
		signalUpdate."