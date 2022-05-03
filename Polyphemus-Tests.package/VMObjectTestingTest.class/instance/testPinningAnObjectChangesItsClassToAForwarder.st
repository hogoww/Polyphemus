test
testPinningAnObjectChangesItsClassToAForwarder
	| oop |
	oop := self reifyOop: self newZeroSizedObject.
	oop pinObjectOop.
	
	self assert: oop isForwarderOop.