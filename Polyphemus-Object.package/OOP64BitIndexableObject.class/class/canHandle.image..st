instance creation
canHandle: anAddress image: image
	^ (image memory formatOf: anAddress) = 9