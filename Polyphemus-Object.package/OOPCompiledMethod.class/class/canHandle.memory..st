instance creation
canHandle: anAddress memory: aMemory
	"only created explicitly, it is the default"
	^ aMemory isOopCompiledMethod: anAddress