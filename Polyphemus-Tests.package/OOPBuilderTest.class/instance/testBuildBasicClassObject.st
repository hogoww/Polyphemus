tests-class
testBuildBasicClassObject
	oopBuilder oopIsClass: true.
	reifiedOop := self buildObject.
	
	self assert: reifiedOop isInstanceSideOop