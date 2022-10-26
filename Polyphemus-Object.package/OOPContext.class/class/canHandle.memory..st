testing
canHandle: anAddress memory: aMemory

	"Hard coded for now I dunno if we have access to shared pools"
	^ (aMemory fetchClassTagOf: anAddress) = 36