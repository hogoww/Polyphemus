initialization
setUp
	super setUp.
	nonIndexableLayoutObject := self reifyOop: (self newObjectWithSlots: 3 format: 1 classIndex: 1024).