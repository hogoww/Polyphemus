instance creation
canHandle: anAddress image: image
	^ (image formatOf: anAddress) between: 10 and: 11