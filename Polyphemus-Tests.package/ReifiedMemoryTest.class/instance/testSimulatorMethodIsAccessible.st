tests
testSimulatorMethodIsAccessible
 	self newMemorySnapshot.
	self assert: reifiedMemory nilObject 
		equals: (reifiedMemory objectAt: reifiedMemory nilObject) address.