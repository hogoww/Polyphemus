instance creation
canHandle: anAddress image: image
	^ (image memory formatOf: anAddress) between: 12 and: 15