tests
testBytecodeAtPut
	object bytecodeAt: 1 put: 2.
	reifiedMemory update.
	object := object reifyOop: object address.
	self assert: (object bytecodeAt: 1) equals: 2