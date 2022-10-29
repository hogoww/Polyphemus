initialization
setUp

	PharoCandleImageResource current setUpTestCase: self.
	nonIndexableLayoutObject := self reifyOop: (self newObjectWithSlots: 3 format: 1 classIndex: 1024).