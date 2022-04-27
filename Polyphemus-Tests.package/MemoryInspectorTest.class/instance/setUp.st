initialization
setUp
	super setUp.
	memoryInspector := (MemoryInspector openOn: interpreter) presenter.