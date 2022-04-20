updating
updateMemorySpace
	self updateScope.
	memorySpace refresh.
	"self buildMemorySpaceIn: memorySpace canvas."
	"self buildMemorySpace.
	
	memorySpace canvas 
		zoomToFit;
		signalUpdate."