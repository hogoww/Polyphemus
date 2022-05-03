running
setUp

	super setUp.
	byteLayoutObject := (self reifyOop: (memory integerObjectOf: 1)) oopClass classNameObject