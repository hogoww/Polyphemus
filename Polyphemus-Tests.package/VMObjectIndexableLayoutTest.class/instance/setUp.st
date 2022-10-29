initialization
setUp

	PharoCandleImageResource current setUpTestCase: self.
	indexableLayoutObject := self reifyOop: (self newObjectWithSlots: 3 format: memory arrayFormat classIndex: memory arrayClassIndexPun).