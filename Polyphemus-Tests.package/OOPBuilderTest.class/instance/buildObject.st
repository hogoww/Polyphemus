helper
buildObject
	| oop |
	oop := oopBuilder buildObject.
	^ self reifyOop: oop