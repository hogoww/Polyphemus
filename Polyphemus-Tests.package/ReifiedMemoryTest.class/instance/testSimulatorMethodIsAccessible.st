tests
testSimulatorMethodIsAccessible
	self assert: reifiedMemory nilObject 
		equals: (reifiedMemory objectAt: reifiedMemory nilObject) address.