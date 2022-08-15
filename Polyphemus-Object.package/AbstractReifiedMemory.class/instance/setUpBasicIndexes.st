initialization
setUpBasicIndexes
	"initialize many addresses to classes that we need to work
	Still nothing should be reified after this point"
	self setUpBaseAddress.
	self setUpMetaclass.
	self setUpMode.
	self setUpStringClasses.
	self setUpCompiledMethodClass.
	self setUpMetaclassForTrait.
	self setUpTraitedMetaclass.