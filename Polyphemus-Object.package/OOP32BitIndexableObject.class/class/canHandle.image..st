instance creation
canHandle: anAddress image: image
	^ (image memory formatOf: anAddress) between: 10 and: 11