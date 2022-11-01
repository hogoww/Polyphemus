instance creation
canHandle: anAddress memory: aMemory
	^ anAddress = 0 or: [ aMemory isImmediate: anAddress ]