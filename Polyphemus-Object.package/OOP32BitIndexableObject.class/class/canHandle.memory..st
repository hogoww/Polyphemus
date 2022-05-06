instance creation
canHandle: anAddress memory: image
	^ (image formatOf: anAddress) between: 10 and: 11