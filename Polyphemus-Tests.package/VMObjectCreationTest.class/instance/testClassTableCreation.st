tests
testClassTableCreation
	self assert: (OOPClassTableObject classTableFor: image) address equals: memory classTableRootObj
	