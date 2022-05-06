testing
canHandle: anAddress image: anImage
	^ (OOPClassTableObject classTableFor: anImage) isInClassTable: anAddress 