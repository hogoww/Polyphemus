decompile
allSymbolicBytecodes
	^ self class environment at: #SymbolicBytecodeBuilder 
		ifPresent: [ :decoderClass | decoderClass decode: self ]
		ifAbsent: [ self error: 'No method decoder class found' ]
	
	