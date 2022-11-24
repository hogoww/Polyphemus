tests-class
testBuildBasicClassObjectTwice
	| anotherReifiedOop |
	oopBuilder oopIsClass: true.
	reifiedOop := self buildObject.
	anotherReifiedOop := self buildObject.
	
	self deny: reifiedOop oopClassIndex equals: anotherReifiedOop oopClassIndex