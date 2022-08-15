reifying
reifyOop: anAddress
	| oop |
	oop := OOPAbstractEntity newFor: anAddress memory: self.
	self objectAt: anAddress put: oop.
	self createCompressedVersion.
	^ oop