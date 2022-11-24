build
setUpMethodDictionaryOf: anOop
	"2 instances variables the array of methods and the tally
	and 12 entries to put elemetns of the collection"
	
	| aMethodDictionary anArrayOfMethods oopBuilder |
	oopBuilder := (self class forMemory: memory).
	aMethodDictionary := oopBuilder
		oopNumberOfSlots: 2 + 12;
		oopFormat: MethodDictionary instSpec;
		oopClassIndex: memory arrayClassIndexPun;
		buildObject.
	
	oopBuilder reset.
	anArrayOfMethods := oopBuilder
		oopNumberOfSlots: 12;
		oopFormat: Array instSpec;
		oopClassIndex: memory arrayClassIndexPun;
		buildObject.
		
	memory
		storePointer: MethodDictionaryIndex
		ofObject: anOop
		withValue: aMethodDictionary.
	memory
		storePointer: MethodArrayIndex
		ofObject: aMethodDictionary
		withValue: anArrayOfMethods.
		