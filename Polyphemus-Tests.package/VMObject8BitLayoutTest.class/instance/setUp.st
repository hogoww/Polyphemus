running
setUp

	PharoCandleImageResource current setUpTestCase: self.
	byteLayoutObject := (self reifyOop: (memory integerObjectOf: 1)) oopClass classNameObject