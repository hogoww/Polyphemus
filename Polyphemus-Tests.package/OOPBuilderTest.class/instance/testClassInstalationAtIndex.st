tests-class
testClassInstalationAtIndex
	oopBuilder 
		oopIsClass: true;
		oopClassIndexinstalation: 2048.
	reifiedOop := self buildObject.
	
	self assert: (self reifyOop: reifiedOop address) oopClassIndex equals: 2048