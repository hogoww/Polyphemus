updating
colorMemorySpace
	memorySpace canvas nodes do: [ :aNode | 
		aNode paint: (colorProvider colorForOop: aNode model).
		self haltOnce.
		aNode signalUpdate ]