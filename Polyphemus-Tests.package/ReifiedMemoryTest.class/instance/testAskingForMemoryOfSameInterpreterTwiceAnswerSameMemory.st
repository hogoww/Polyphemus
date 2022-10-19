tests
testAskingForMemoryOfSameInterpreterTwiceAnswerSameMemory
	| initalMemory |
	initalMemory := reifiedMemory.
	self newMemorySnapshot.
	self assert: initalMemory
		identicalTo: reifiedMemory