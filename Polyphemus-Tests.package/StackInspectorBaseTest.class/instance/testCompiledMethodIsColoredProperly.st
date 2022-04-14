test-color
testCompiledMethodIsColoredProperly
	
	| oop |
	oop := methodBuilder buildMethod.
	self updateSpaces.
	
	self assert: (oldSpace oopForAddress: oop) paint equals: oldSpace colorProvider compiledMethodOopColor.