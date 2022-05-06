instance creation
canHandle: anAddress image: image
	^ (image formatOf: anAddress) between: 12 and: 15