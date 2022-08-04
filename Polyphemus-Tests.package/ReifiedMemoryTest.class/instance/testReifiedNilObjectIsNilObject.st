test-specialObjects
testReifiedNilObjectIsNilObject
	self assert: reifiedMemory nilObject   
		equals: reifiedMemory reifiedNilObject address.