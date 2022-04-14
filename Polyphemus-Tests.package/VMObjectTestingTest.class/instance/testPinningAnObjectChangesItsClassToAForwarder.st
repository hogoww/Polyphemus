test
testPinningAnObjectChangesItsClassToAForwarder
	| oop |
	oop := self objectForOop: self newZeroSizedObject.
	oop pinObjectOop.
	
	self assert: oop isForwarderOop.