tests
testClassInstancesOf

	| classOop newObjectOop classObject classTableObject classPage |
	classOop := self newClassInOldSpaceWithSlots: 1.
	classTableObject := self objectForOop: memory classTableRootObj.
	classPage := classTableObject slotAt: 2.
	classPage slotAt: 1024 put: classOop.

	newObjectOop := memory instantiateClass: classOop.
	self deny: newObjectOop isNil.
	classObject := self objectForOop: classOop.
	
	self assert: classObject instancesOop equals: { newObjectOop } asOrderedCollection  