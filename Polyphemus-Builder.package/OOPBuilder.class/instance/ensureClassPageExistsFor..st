build
ensureClassPageExistsFor: anIndex

	| pageOop index |
	index := anIndex  // memory classTablePageSize.
	(memory fetchPointer: index ofObject: memory hiddenRootsObject) = memory nilObject ifFalse: [ ^ self ].
	
	pageOop := (self class forMemory: memory)
			oopNumberOfSlots: memory classTablePageSize;
			oopFormat: memory arrayFormat;
			oopClassIndex: memory arrayClassIndexPun;
			buildObject.
		
	memory nilFieldsOf: pageOop.
	memory storePointer: index ofObject: memory hiddenRootsObject withValue: pageOop.