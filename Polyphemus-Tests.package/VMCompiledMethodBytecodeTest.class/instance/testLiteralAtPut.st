tests
testLiteralAtPut
	object literalAt: 1 put: 42.
	reifiedMemory update.
	object := object reifyOop: object address.
	self assert: (object literalAt: 1) equals: 42