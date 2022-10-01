tests-class
testClassInstalationAtIndexInEmptyPage
	oopBuilder 
		oopIsClass: true;
		oopClassIndexinstalation: 2049.
	reifiedOop := self buildObject.
	
	self assert: (self reifyOop: reifiedOop address) oopClassIndex equals: 2050