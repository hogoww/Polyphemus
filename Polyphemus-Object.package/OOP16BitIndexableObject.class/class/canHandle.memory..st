instance creation
canHandle: anAddress memory: image
	^ (image formatOf: anAddress) between: 12 and: 15