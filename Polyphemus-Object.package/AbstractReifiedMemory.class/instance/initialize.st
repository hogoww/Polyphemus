initialization
initialize
	"initialize all the classes that implement canHandle:memory: on every initialization of Reified memory"
	stringClasses := Set new.
	OOPAbstractEntity initialize.
	flagErrorObjects := false.
	flagErrorFreeTree := false.