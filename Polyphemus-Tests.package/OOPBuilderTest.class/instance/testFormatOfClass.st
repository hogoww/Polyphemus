tests-class
testFormatOfClass
	oopBuilder oopIsClass: true;
		oopFormatOfInstances: 19.
	reifiedOop := self buildObject.
	self assert: (memory formatOfClass: reifiedOop address) equals: oopBuilder oopFormatOfInstances