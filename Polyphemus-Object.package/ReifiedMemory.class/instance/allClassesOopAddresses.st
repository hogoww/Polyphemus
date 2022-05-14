accessing
allClassesOopAddresses
	"Sometimes we need the addresses rather than the objects, rather than the reified object
	For example when we are trying to find the Strings classes in ReifiedMemory"
	^ (self reifyOop: memory classTableRootObj) allClassesOopAddresses