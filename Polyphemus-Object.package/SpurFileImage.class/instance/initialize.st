accessing
initialize

	super initialize.
	self readImageHeader.
	simulator := self wordsize = 4
		ifTrue: [ Spur32BitMemoryManager simulatorClass new ]
		ifFalse: [ Spur64BitMemoryManager simulatorClass new ].