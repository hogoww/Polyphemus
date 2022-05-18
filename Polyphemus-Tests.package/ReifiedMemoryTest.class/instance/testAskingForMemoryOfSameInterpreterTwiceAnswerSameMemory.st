tests
testAskingForMemoryOfSameInterpreterTwiceAnswerSameMemory
	| initalMemory |
	self newMemorySnapshot.
	initalMemory := reifiedMemory.
	self newMemorySnapshot.
	self assert: initalMemory
		identicalTo: reifiedMemory