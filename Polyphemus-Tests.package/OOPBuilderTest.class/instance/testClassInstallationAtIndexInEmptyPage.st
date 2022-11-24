tests-class
testClassInstallationAtIndexInEmptyPage
	"reifiedOop is 1 based, vm is 0 based"
	oopBuilder 
		oopIsClass: true;
		oopClassIndexinstalation: 2049.
	reifiedOop := self buildObject.
	
	self assert: (self reifyOop: reifiedOop address) oopClassIndex equals: 2050