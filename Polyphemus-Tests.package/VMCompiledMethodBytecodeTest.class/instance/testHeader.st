tests
testHeader
	object methodHeader: 42.
	reifiedMemory update.
	object := object reifyOop: object address.
	self assert: object methodHeader equals: 42 