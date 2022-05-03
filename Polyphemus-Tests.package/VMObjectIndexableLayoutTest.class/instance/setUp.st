initialization
setUp
	super setUp.
	indexableLayoutObject := self reifyOop: (self newObjectWithSlots: 3 format: memory arrayFormat classIndex: memory arrayClassIndexPun).