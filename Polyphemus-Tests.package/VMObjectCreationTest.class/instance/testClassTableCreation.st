tests-classTable
testClassTableCreation
	self assert: (OOPClassTableObject classTableFor: memory) address equals: memory classTableRootObj
	