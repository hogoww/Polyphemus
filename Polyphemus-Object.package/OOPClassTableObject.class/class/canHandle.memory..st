instance creation
canHandle: anAddress memory: anImage
	^ (self classTableFor: anImage) = anAddress