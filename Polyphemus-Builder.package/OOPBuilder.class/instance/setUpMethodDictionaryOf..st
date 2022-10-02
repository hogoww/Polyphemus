build
setUpMethodDictionaryOf: anOop
	"2 instances variables the array of methods and the tally
	and 12 entries to put elemetns of the collection"
	
	| aMethodDictionary anArrayOfMethods |
	aMethodDictionary := (self class forMemory: memory)
		oopNumberOfSlots: 2 + 12;
		oopFormat: MethodDictionary instSpec;
		classIndex: memory arrayClassIndexPun;
		buildObject.
		
	anArrayOfMethods := (self class forMemory: memory)
		oopNumberOfSlots: 12;
		oopFormat: Array instSpec;
		classIndex: memory arrayClassIndexPun;
		buildObject.
		
	memory
		storePointer: MethodDictionaryIndex
		ofObject: anOop
		withValue: aMethodDictionary.
	memory
		storePointer: MethodArrayIndex
		ofObject: aMethodDictionary
		withValue: anArrayOfMethods.
		