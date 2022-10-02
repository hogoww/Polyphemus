initialization
initialize
	"initialize all the classes that implement canHandle:memory: on every initialization of Reified memory"
	stringClassIndexes := OrderedCollection new.
	OOPAbstractEntity initialize.
	flagErrorObjects := false.
	flagErrorFreeTree := false.
	freeze := false