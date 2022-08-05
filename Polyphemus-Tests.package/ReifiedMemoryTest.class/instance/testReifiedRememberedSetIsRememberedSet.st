test-specialObjects
testReifiedRememberedSetIsRememberedSet
	self assert: reifiedMemory rememberedSetObj   
		equals: reifiedMemory reifiedRememberedSet address.