instance creation
canHandle: anAddress memory: image
	^ (image formatOf: anAddress) between: 16 and: 23