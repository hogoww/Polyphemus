tests
setUp
	super setUp.
	oop := methodBuilder 
		bytecodes:#[ 1 2 3 4 5 ];
		buildMethod.
	object := self reifyOop: oop.
	self assert: object isCompiledMethodOop