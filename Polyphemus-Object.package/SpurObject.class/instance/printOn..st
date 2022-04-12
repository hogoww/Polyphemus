printing
printOn: aStream
	| knownObject |
	knownObject := VMFrameBuilder new memory: self simulator ; adaptAddressToMemory: address.
	knownObject isString ifTrue: [ ^ aStream <<  knownObject ].

	self isImmediate ifTrue:[ ^ aStream << self printAsImmediate ].
	
	address printOn: aStream
	