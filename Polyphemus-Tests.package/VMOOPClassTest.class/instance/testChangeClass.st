tests
testChangeClass
	| reifiedClass anotherReifiedClass instanceOop |
	oopBuilder := OOPBuilder forMemory: memory. 
	oopBuilder oopIsClass: true.
	reifiedClass := self buildObject.
	
	anotherReifiedClass := self buildObject.
	
	oopBuilder reset.
	oopBuilder 
		oopClassIndex: reifiedClass oopClassIndex.
	instanceOop := self buildObject.
	
	instanceOop changeClassTo: anotherReifiedClass.
	
	self assert: instanceOop oopClass equals: anotherReifiedClass