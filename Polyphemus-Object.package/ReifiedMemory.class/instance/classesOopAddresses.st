accessing
classesOopAddresses
	"Sometimes we need the addresses rather than the objects, rather than the reified object
	For example to find string classe"
	^ (self reifyOop: memory classTableRootObj) allClassesOop