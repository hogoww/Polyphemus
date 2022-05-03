instance creation
canHandle: anAddress image: anImage
	^ (self classTableFor: anImage) = anAddress