initialization
newMemory

	^ self wordSize = 4
		ifTrue: [ Spur32BitMemoryManager simulatorClass new ]
		ifFalse: [ Spur64BitMemoryManager simulatorClass new ]