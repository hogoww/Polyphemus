printing
printString
	| knownObject |
	knownObject := VMFrameBuilder new memory: self simulator ; adaptAddressToMemory: address.
	knownObject isString ifTrue: [ ^ knownObject ].

	self isImmediate ifTrue:[ ^ self printAsImmediate ].
	
	^ String streamContents: [ :s |
		s << address printString.
		]
	