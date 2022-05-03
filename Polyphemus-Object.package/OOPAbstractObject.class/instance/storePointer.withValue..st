storing
storePointer: anIndex withValue: anObjectOrOop
	^ memory
		  storePointer: anIndex
		  ofObject: self address
		  withValue: anObjectOrOop value