instance creation
canHandle: anAddress memory: image
	"only created explicitly, it is the default"
	^ image isOopCompiledMethod: anAddress