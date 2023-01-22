running
memoryClass
	self memoryClassForImage ifNotNil: [ :memoryClass | ^ memoryClass ].

	"In case there is no image"
	^ self wordSize = 4
		ifTrue: [ Spur32BitMemoryManager ]
		ifFalse: [ Spur64BitMemoryManager ]