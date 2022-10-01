tests-class
testBuildBasicClassObject
	oopBuilder oopIsClass: true.
	reifiedOop := self buildObject.
	
	self assert: (self reifyOop: reifiedOop address) isInstanceSideOop 