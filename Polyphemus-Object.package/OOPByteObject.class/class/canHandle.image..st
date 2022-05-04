instance creation
canHandle: anAddress image: image
	^ (image memory formatOf: anAddress) between: 16 and: 23