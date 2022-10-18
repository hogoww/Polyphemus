reifying
reifyOop: anAddress
	| oop |
	oop := OOPAbstractEntity newFor: anAddress memory: self.
	oop isImmediateOop ifFalse: [ self objectAt: anAddress put: oop. ].
	^ oop