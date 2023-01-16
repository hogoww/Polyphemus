running
setUp

	super setUp.
	compiledMethodOop := methodBuilder 
		literals:  #(1 2 3 4);
		bytecodes:#[ 1 2 3 4 5 ];
		buildMethod.
	compiledMethodObject := self reifyOop: compiledMethodOop.
	self assert: compiledMethodObject isCompiledMethodOop