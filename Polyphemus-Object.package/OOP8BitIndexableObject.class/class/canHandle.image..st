instance creation
canHandle: anAddress image: image
	^ (image formatOf: anAddress) between: 16 and: 23